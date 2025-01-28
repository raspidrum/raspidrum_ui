

// Repostitory used for setting values in back controls: channel volume, pan, plugins (FX) params, mixer controls
// Sending a command to the back is asynchronous and queued


import 'dart:async';
import 'dart:collection';

import 'package:logging/logging.dart';

import '../../services/channel_control/channel_control_service.dart';
import '../../services/channel_control/model/channel_control.dart';
import '../../utils/result.dart';

// Class is used for interacting with viewmodel or other upper level
class ControlsRepository {

  final ChannelControlService _service;
  final _log = Logger('ControlsRepository');

  Map<String, _Control> _controls = {};

  ControlsRepository(
    this._service
  );

  void setValue(String key, double value) {
    if  (! _controls.containsKey(key)) {
      _controls[key] = _Control(key, _service, _log);
    }
    _controls[key]!.addEvent(value);
  }


}

// Type for holding event of setting control value
class _valRequest {
  final int seq;
  final double value;

  _valRequest({
    required this.seq,
    required this.value,
  });
}

// Class handle queue for one control
class _Control {
  
  _Control(
    this._key,
    this._service,
    this._log,
  );

  static final int delayStartProcessing = 10;
  static final int periodProcessing = 50;

  final String _key;
  final ChannelControlService _service;
  final Logger _log;
  Timer? _timer;
  int _seq = 0;
  
  final Queue<double> _valsQueue = Queue();
  _valRequest? _processindEvent;
  _valRequest? _completedEvent;



  // adding event to queue to delayed process
  void addEvent(double value) {
    _valsQueue.add(value);
    if (_timer == null || !_timer!.isActive) {
      _timer = Timer(Duration(milliseconds: delayStartProcessing), () => _processQueue());
    } 
  }

  // process queue after timer
  void _processQueue() async {
    if (_valsQueue.isEmpty) {
      return;
    }
    double? val;
    // read all events in queue
    while (_valsQueue.isNotEmpty) {
      val = _valsQueue.removeFirst();
    }
    _seq++;
    _processindEvent = _valRequest(seq: _seq, value: val!);
    _timer = Timer(Duration(milliseconds: periodProcessing), () => _processQueue());
    final setValueResult = await _service.setValue(_key, _seq, val);
    switch (setValueResult) {
      case Ok<ChannelControl>():
        _processResponse(setValueResult.value);
      case Error<ChannelControl>():
        _log.warning('Failed to set value', setValueResult.error);
    }
  }

  void _processResponse(ChannelControl settedValue) {
    // TODO: if (key != this._key) { throw exception("invalid key: $key"); }
    // update last completed event
    if (_completedEvent != null) {
      if (settedValue.seq > _completedEvent!.seq) {
        _completedEvent = _valRequest(seq: settedValue.seq, value: settedValue.value);  
      }
    } else {
      _completedEvent = _valRequest(seq: settedValue.seq, value: settedValue.value);
    }
  }


}


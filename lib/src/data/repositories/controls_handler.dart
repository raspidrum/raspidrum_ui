

// Repostitory used for setting values in back controls: channel volume, pan, plugins (FX) params, mixer controls
// Sending a command to the back is asynchronous and queued


import 'dart:async';
import 'dart:collection';

import '../../services/channel_control/channel_control_service.dart';
import '../../services/channel_control/model/channel_control.dart';

// Class is used for interacting with viewmodel or other upper level
class ControlsHandler {

  final ChannelControlService _service;

  Map<String, _Control> _controls = {};

  void setValue(String key, double value) {
    if  (! _controls.containsKey(key)) {
      _controls[key] = _Control(key, _service);
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
    this._service
  );

  static final int delayStartProcessing = 10;
  static final int periodProcessing = 50;
  Timer? _timer;

  final String _key;
  final ChannelControlService _service;
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
  void _processQueue() {
    if (_valsQueue.isEmpty) {
      return;
    }
    double? val;
    // read all events in queue
    while (_valsQueue.isNotEmpty) {
      val = _valsQueue.removeFirst();
    }
    // TODO: handle request result
    _service.setValue(_key, _seq++, val!);
    _processindEvent = _valRequest(seq: _seq, value: val!);
    _timer = Timer(Duration(milliseconds: periodProcessing), () => _processQueue());
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


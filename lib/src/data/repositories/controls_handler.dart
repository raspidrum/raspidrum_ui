// Handler used for setting values in back controls: channel volume, pan, plugins (FX) params, mixer controls
// Sending a command to the back is asynchronous and queued

import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';

import 'package:logging/logging.dart';

import '../../services/control_handler/control_handler_service.dart';
import '../../model/control_value.dart' as $model;
import '../../utils/result.dart';

// Class is used for interacting with viewmodel or other upper level
class ControlHandler {
  final ControlHandlerService _service;
  final _log = Logger('ControlsRepository');

  Timer? _timer;
  final int delayStartProcessing = 10;
  final int periodProcessing = 50;
  bool _cancelled = false;

  StreamController<$model.ControlValue>? controller;

  final Map<String, _Control> _controls = {};

  ControlHandler(this._service);

  void setValue(String key, double value) {
    if (!_controls.containsKey(key)) {
      _controls[key] = _Control(key, _log);
    }
    _controls[key]!.addEvent(value);
    _startSending();
  }

  void _startSending() {
    if (controller == null || _cancelled) {
      controller = StreamController<$model.ControlValue>(
        onListen: () => {_log.fine("onListen"), _startTimer},
        onCancel: () => {_log.fine("onCancel"), _cancelled = true, _stopTimer},
        onPause: () => {_log.fine("onPause"), _stopTimer},
        onResume: () => {_log.fine("onResume"), _startTimer},
      );
      _cancelled = false;
    }

    if (controller!.isClosed || !controller!.hasListener) {
      _log.fine("start sending");

    _service.runSendValues(controller!.stream, (result) {
      switch (result) {
        case Ok<$model.ControlValue>():
          _controls[result.value.key]?.processResponse(result.value);
        case Error<$model.ControlValue>():
          _log.warning(
              'Failed to set value: ${result.error.toString()}', result.error);
      }
    });
    } else {
      if (_timer == null || !_timer!.isActive) {
        _startTimer();
      }
    }
  }

  // process queue after timer
  void processSend() {
    int sended = 0;
    for (final control in _controls.values) {
      final val = control.queuedValue;
      if (val != null) {
        _log.fine(
            "request: \t ${val.key} \t seq: ${val.seq} \t val: ${val.value}");
        controller!.add(val);
        sended++;
      }
    }
    if (sended == 0) {
      _log.fine("empty queue, streaming stopped");
    } else {
      _timer =
          Timer(Duration(milliseconds: periodProcessing), () => processSend());
    }
  }

  void _startTimer() {
    _timer = Timer(
        Duration(milliseconds: delayStartProcessing), () => processSend());
  }

  void _stopTimer() {
    _timer?.cancel();
    _timer = null;
  }
}

// Type for holding event of setting control value
class _ValRequest {
  final int seq;
  final double value;
  final DateTime startTime = DateTime.now();

  _ValRequest({
    required this.seq,
    required this.value,
  });
}

// Class handle queue for one control
class _Control {
  _Control(
    this._key,
    this._log,
  );

  final String _key;
  final Logger _log;
  int _seq = 0;

  final Queue<double> _valsQueue = Queue();
  _ValRequest? _processindEvent;
  _ValRequest? _completedEvent;

  // adding event to queue to delayed process
  void addEvent(double value) {
    _valsQueue.add(value);
  }

  $model.ControlValue? get queuedValue {
    if (_valsQueue.isEmpty) {
      return null;
    }
    double? val;
    // read all events in queue
    _log.fine("queue: \t $_key: $_valsQueue");
    while (_valsQueue.isNotEmpty) {
      val = _valsQueue.removeFirst();
    }
    _seq++;
    if (kDebugMode) {
      _processindEvent = _ValRequest(seq: _seq, value: val!);
    }
    return $model.ControlValue(key: _key, seq: _seq, value: val!);
  }


  void processResponse($model.ControlValue settedValue) {
    if (settedValue.key != _key) {
      throw Exception("invalid key: ${settedValue.key}");
    }
    // update last completed event
    if (_completedEvent == null || settedValue.seq >= _completedEvent!.seq) {
      _completedEvent = 
          _ValRequest(seq: settedValue.seq, value: settedValue.value);
      if (kDebugMode) {
        final endTime = DateTime.now();
        final duration = endTime.difference(_processindEvent!.startTime);
        _log.fine(
          "completed: \t ${settedValue.key} \t seq: ${settedValue.seq} \t val: ${settedValue.value} \t duration: ${duration.inMilliseconds} ms");
      }
    }
  }
}

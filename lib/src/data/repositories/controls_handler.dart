

// Repostitory used for setting values in back controls: channel volume, pan, plugins (FX) params, mixer controls
// Sending a command to the back is asynchronous and queued


import 'dart:async';
import 'dart:collection';

// Class is used for interacting with viewmodel or other upper level
class ControlsHandler {

  Map<String, _Control> _controls = {};

  void setValue(String key, double value) {
    if  (! _controls.containsKey(key)) {
      _controls[key] = _Control(key);
    }
    _controls[key]!.addEvent(value);
  }


}

// Type for holding event of setting control value
class _valEvent {
  final int seq;
  final double value;

  _valEvent({
    required this.seq,
    required this.value,
  });
}

// Class handle queue for one control
class _Control {
  
  _Control(this._key);

  static final int delayStartProcessing = 10;
  static final int periodProcessing = 50;
  Timer? _timer;

  final String _key;
  int _seq = 0;
  
  final Queue<_valEvent> _valsQueue = Queue();
  _valEvent? _processindEvent;
  _valEvent? _completedEvent;



  // adding event to queue to delayed process
  void addEvent(double value) {
    var val = _valEvent(seq: _seq++, value: value);
    _valsQueue.add(val);
    if (_timer == null || !_timer!.isActive) {
      _timer = Timer(Duration(milliseconds: delayStartProcessing), () => _processQueue());
    } 
  }

  // process queue after timer
  void _processQueue() {
    if (_valsQueue.isEmpty) {
      return;
    }
    _valEvent? val;
    // read all events in queue
    while (_valsQueue.isNotEmpty) {
      val = _valsQueue.removeFirst();
    }
    // TODO: start request
    _processindEvent = val;
    _timer = Timer(Duration(milliseconds: periodProcessing), () => _processQueue());
  }

  void _processResponse(String key, int seq, double value) {
    // TODO: if (key != this._key) { throw exception("invalid key: $key"); }
    // update last completed event
    if (_completedEvent != null) {
      if (seq > _completedEvent!.seq) {
        _completedEvent = _valEvent(seq: seq, value: value);  
      }
    } else {
      _completedEvent = _valEvent(seq: seq, value: value);
    }
  }


}


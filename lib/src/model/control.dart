// Interface for all controls that can have their value set
abstract class Control {
  String get key;
  double get value;
  void setValue(double value);
} 
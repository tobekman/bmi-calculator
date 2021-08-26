import 'dart:math';

class CalculatorBrain {
  final double height;
  final double weight;

  late double _bmi = _calculateDoubleBMI();

  CalculatorBrain(this.height, this.weight);

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  double _calculateDoubleBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}

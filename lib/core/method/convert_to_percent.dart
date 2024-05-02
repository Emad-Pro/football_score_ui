import 'dart:math';

double convertToPercent(double numberOne, double numberTow) {
  double total = numberOne + numberTow;
  if (total > 0) {
    return min((numberOne / total), 1.0);
  } else {
    return 0;
  }
}

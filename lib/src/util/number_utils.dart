import 'dart:math';

double roundDouble(double value, int places){
  num mod = pow(10.0, places);
  return ((value * mod).round().toDouble() / mod);
}

class NumberUtils {

}

List<double> getSuggestedDenominationBasedOnAmount(double amount, List<double> denominations) {
  List<double> result = [];
  double remainingAmount = amount;
  denominations.sort((a, b) => b.compareTo(a));
  for (double denomination in denominations) {
    if (remainingAmount >= denomination) {
      int count = (remainingAmount / denomination).floor();
      for (int i = 0; i < count; i++) {
        result.add(denomination);
      }
      remainingAmount = remainingAmount - (denomination * count);
    }
  }
  return result;
}
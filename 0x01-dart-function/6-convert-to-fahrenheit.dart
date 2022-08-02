List<double> convertToF(List<double> temperaturesInC) {
  List<double> res = temperaturesInC.map((temperatureInC) {
    return double.parse((res * 9 / 5 + 32).toStringAsFixed(2));
  }).toList();
  return res;
}

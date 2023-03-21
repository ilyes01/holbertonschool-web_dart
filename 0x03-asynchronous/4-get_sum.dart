import 'dart:convert';

Future<double> calculateTotal() async {
var products = {"pizza": 20.30, "orange": 10, "water": 5, "soda": 8.5};
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => products[product]);
  } catch (err) {
    return -1;
  }
}


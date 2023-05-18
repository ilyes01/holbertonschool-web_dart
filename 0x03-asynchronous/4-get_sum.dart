import 'dart:async';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = json.decode(userData);
    final userOrders = await fetchUserOrders(user['id']);
    final orders = json.decode(userOrders);
    double totalPrice = 0;
    for (var order in orders) {
      final productPrice = await fetchProductPrice(order);
      final price = double.parse(productPrice);
      totalPrice += price;
    }
    return totalPrice;
  } catch (error) {
    return -1;
  }
}

Future<String> fetchUserOrders(String id) async {
  var orders = {
    "7ee9a243-01ca-47c9-aa14-0149789764c3": ["pizza", "orange"]
  };
  try {
    return Future.delayed(
        const Duration(seconds: 2), () => json.encode(orders[id]));
  } catch (err) {
    return "error caught: $err";
  }
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> fetchProductPrice(String product) async {
  var products = {"pizza": "20.30", "orange": "10", "water": "5", "soda": "8.5"};
  try {
    return Future.delayed(const Duration(seconds: 2), () => products[product]);
  } catch (err) {
    return "error caught: $err";
  }
}


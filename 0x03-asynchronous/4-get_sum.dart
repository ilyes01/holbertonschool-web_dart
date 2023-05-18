import 'dart:async';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final user = parseUserData(userData);
    final userOrders = await fetchUserOrders(user["id"]);
    final orders = parseUserOrders(userOrders);
    double totalPrice = 0;
    for (var order in orders) {
      final productPrice = await fetchProductPrice(order);
      final price = parseProductPrice(productPrice);
      totalPrice += price;
    }
    return totalPrice;
  } catch (error) {
    return -1;
  }
}

Map<String, dynamic> parseUserData(String userData) {
  final userMap = json.decode(userData);
  return userMap;
}

List<String> parseUserOrders(String userOrders) {
  final ordersList = json.decode(userOrders);
  return List<String>.from(ordersList);
}

double parseProductPrice(String productPrice) {
  final price = double.parse(productPrice);
  return price;
}


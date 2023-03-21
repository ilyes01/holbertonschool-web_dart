import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = json.decode(await fetchUserData());
    final userId = userData['id'];
    final userOrders = json.decode(await fetchUserOrders(userId));
    double total = 0;
    for (var order in userOrders) {
      final price = json.decode(await fetchProductPrice(order));
      total += price;
    }
    return total;
  } catch (err) {
    return -1;
  }
}


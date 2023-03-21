import '2-util.dart';

Future<void> getUser() async {
  try {
    String userData = await fetchUser();
    print(userData);
  } catch (e) {
    print('error caught: $e');
  }
}


import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final username = json.decode(userData)['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}


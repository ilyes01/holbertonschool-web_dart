import 'dart:async';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final user = parseUserData(userData);
    return 'Hello ${user["username"]}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    final isUser = await checkCredentials();
    print('There is a user: $isUser');
    if (isUser) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}

Map<String, dynamic> parseUserData(String userData) {
  // Parse the user data JSON and return it as a Map
  final userMap = jsonDecode(userData);
  return userMap;
}



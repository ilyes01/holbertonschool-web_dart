import '0-util.dart';

void main() async {
  await usersCount();
}

Future<void> usersCount() async {
  try {
    var count = await fetchUsersCount();
    print('Number of users: $count');
  } catch (e) {
    print('Error fetching user count: $e');
  }
}


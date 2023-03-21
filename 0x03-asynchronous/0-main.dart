import '0-users_count.dart';

main() async {
  await usersCount();
}
achref@achref:~$ cat 0-util.dart

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

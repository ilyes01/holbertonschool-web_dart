class Password {
  late String _password;

  Password({required String password}) {
    _password = password;
  }

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    return _password.length >= 8;
  }

  @override
  String toString() {
    return "Password $_password";
  }
}


class Password {
  String _password = "";

  String get password => _password;

  set password(String value) => _password = value;

  bool isValid() {
    RegExp lower = RegExp(r'[a-z]');
    RegExp upper = RegExp(r'[A-Z]');
    RegExp digit = RegExp(r'[0-9]');
    return _password.length >= 8 &&
        _password.length <= 16 &&
        lower.hasMatch(_password) &&
        upper.hasMatch(_password) &&
        digit.hasMatch(_password);
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}


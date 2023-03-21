bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  for (int i = 0; i < s.length ~/ 2; i++) {
    if (s[i] != s[s.length - 1 - i]) {
      return false;
    }
  }

  return true;
}


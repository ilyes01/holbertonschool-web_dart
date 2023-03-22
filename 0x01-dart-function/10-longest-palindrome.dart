String longestPalindrome(String s) {
  int maxLength = 0;
  String longest = "";
  
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      String substring = s.substring(i, j + 1);
      if (isPalindrome(substring)) {
        int length = substring.length;
        if (length > maxLength) {
          maxLength = length;
          longest = substring;
        }
      }
    }
  }
  
  return maxLength < 3 ? "none" : longest;
}

bool isPalindrome(String s) {
  int i = 0, j = s.length - 1;
  while (i < j) {
    if (s[i] != s[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}


String longestUniqueSubstring(String str) {
  String longestSubstring = "";
  String currentSubstring = "";

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    int charIndex = currentSubstring.indexOf(char);

    if (charIndex == -1) {
      // char is not already in currentSubstring, so add it
      currentSubstring += char;

      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }
    } else {
      // char is already in currentSubstring, so start a new substring
      currentSubstring = currentSubstring.substring(charIndex + 1) + char;
    }
  }

  return longestSubstring;
}


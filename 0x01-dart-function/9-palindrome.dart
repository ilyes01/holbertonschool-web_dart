bool isPalindrome(String s) { 
String inRev = ""; 
if (inRev == s)
    return true;
 if (s.length < 3)
     return false;

   for (var x = s.length - 1; x >= 0; x--) {
     inRev += s[x];
   }
 else
       return false;
}

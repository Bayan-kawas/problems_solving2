void main() {
  String str = "GEEKSFORGEEKS";
  String substring = "";
  String longestSubstring = "";

  for (int i = 0; i < str.length; i++) {
    RegExp regExp = RegExp("${str[i]}");
    if (regExp.hasMatch(substring) == false) {
      substring = substring + str[i];
      if (i == str.length - 1) {
        if (substring.length > longestSubstring.length) {
          longestSubstring = substring;
        }
      }
    } else {
      if (substring.length > longestSubstring.length) {
        longestSubstring = substring;
      }
      substring = "";
    }
  }

  print(longestSubstring);
  print(longestSubstring.length);
}
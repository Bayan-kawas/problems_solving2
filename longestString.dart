void main() {
  String str="GEEKSFORGEEKS";
  List substrings=[];
  String substring="";

  for(int i=0;i<str.length;i++){
    RegExp regExp=RegExp("${str[i]}");
    if(regExp.hasMatch(substring)==false){
      substring=substring+str[i];
      if(i==str.length-1){
        substrings.add(substring);
      }
    }else{
      substrings.add(substring);
      substring="";
    }

  }
  print(substrings);
  String longestSubstring="";
  for(int i=0;i < substrings.length;i++){
    if(substrings[i].length > longestSubstring.length){
      longestSubstring=substrings[i];
    }
  }
  print(longestSubstring);
  print(longestSubstring.length);
}
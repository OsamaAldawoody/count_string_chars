Map<String, int> countChars(String str) {
  // aaaabbbb => {'a':4, 'b':4}
  var obj = <String, int>{};
  for (var i = 0; i < str.length; i++) {
    var char = str[i].toLowerCase();
    if (char.startsWith(RegExp('[a-z]'))) {
      if (obj.containsKey(char)) {
        obj[char]++;
      } else {
        obj[char] = 1;
      }
    }
  }
  return obj;
}

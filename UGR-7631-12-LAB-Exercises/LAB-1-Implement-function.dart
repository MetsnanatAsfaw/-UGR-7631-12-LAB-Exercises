String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join('');
}

void main() {
  String input = 'Ethiopia';
  String reversed = reverseString(input);
  print(reversed);  
}

// // Or I can let user to be flexible by letting to input their own string.
// import 'dart:io';

// String reverseString(String input) {
//   List<String> characters = input.split('');
//   characters = characters.reversed.toList();
//   return characters.join('');
// }

// void main() {
//   print('Enter a string:');
//   String? input = stdin.readLineSync();
//   String reversed = reverseString(input!);
//   print('Reversed string: $reversed');
// }
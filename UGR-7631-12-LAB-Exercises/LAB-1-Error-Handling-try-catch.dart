import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String userInput = stdin.readLineSync()!;

  try {
    int num = int.parse(userInput);
    print('The entered number is $num');
  } catch (e) {
    print('Invalid input. Please enter a valid number.');
  }
}
import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  int num2 = int.parse(stdin.readLineSync()!);

  int sum = computeSum(num1, num2);
  print('The sum of $num1 and $num2 is $sum');
}

int computeSum(int a, int b) {
  return a + b;
}
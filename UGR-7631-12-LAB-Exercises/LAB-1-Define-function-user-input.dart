import 'dart:io';
//Getting the range from the user or 
//The user to enter the starting and ending numbers of the range. 

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  
  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  
  return true;
}

void main() {
  print("Enter the starting number: ");
  int start = int.parse(stdin.readLineSync()!);
  
  print("Enter the ending number: ");
  int end = int.parse(stdin.readLineSync()!);
  
  print("Prime numbers between $start and $end:");
  
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}
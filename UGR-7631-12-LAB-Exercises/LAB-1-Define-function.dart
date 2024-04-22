//Define the range of numbers to check for primes (start and end)
bool isPrime(int num) {
  if (num < 2) {
    return false;
  }
  
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  
  return true;
}

void main() {
  int start = 1;
  int end = 100;
  
  print("Prime numbers between $start and $end:");
  
  for (int num = start; num <= end; num++) {
    if (isPrime(num)) {
      print(num);
    }
  }
}
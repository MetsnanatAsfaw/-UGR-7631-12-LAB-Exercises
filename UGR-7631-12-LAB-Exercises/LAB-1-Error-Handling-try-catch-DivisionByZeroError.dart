class DivisionByZeroException implements Exception {
  String errorMessage() => "Error: Division by zero is not allowed.";
}

double divideNumbers(double a, double b) {
  try {
    if (b == 0) {
      throw DivisionByZeroException();
    }
    return a / b;
  } catch (e) {
    if (e is DivisionByZeroException) {
      print(e.errorMessage());
    } else {
      print("An error occurred: $e");
    }
    rethrow;
  }
}

void main() {
  double a = 1;
  double b = 0;

  try {
    double result = divideNumbers(a, b);
    print("Result: $result");
  } catch (e) {
    print("An error occurred: $e");
  }
}




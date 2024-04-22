abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Square extends Shape {
  //S is side of square
  double S;

  Square(this.S);

  @override
  double calculateArea() {
    return S * S;
  }
}

void main() {
  // Create a circle object
  Circle circle = Circle(5.0);
  double circleArea = circle.calculateArea();
  print('Circle Area: $circleArea');

  // Create a square object
  Square square = Square(4.0);
  double squareArea = square.calculateArea();
  print('Square Area: $squareArea');
}
class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    int sum = marks.reduce((a, b) => a + b);
    return sum / marks.length;
  }
}

void main() {
  // Create a Student object
  Student student = Student('Caleb', [95, 90, 87, 92, 98]);

  // Calculate and print the average mark
  double averageMark = student.calculateAverageMark();
  print('Average Mark: $averageMark');
}
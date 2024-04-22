void main() {
  Map<String, int> studentsMarks = {};

  // Adding entries using putIfAbsent
  studentsMarks.putIfAbsent('Yared', () => 85);
  studentsMarks.putIfAbsent('Abigiya', () => 92);
  studentsMarks.putIfAbsent('Eden', () => 78);

  // Iterating over the map using forEach
  studentsMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  // Checking for entries using containsKey
  String nameToCheck = 'Abigiya';
  if (studentsMarks.containsKey(nameToCheck)) {
    print('$nameToCheck is present in the map.');
  } else {
    print('$nameToCheck is not present in the map.');
  }
}
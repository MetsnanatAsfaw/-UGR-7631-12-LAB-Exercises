class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  // Create a person object
  Person person1 = Person('Metsnanat Asfaw',22, '5 kilo');

  // Access attributes of person1
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');

  // Modify attributes of person1
  person1.name = 'Billy Graham ';
  person1.age = 99;
  person1.address = 'America,Boston';

  // Access modified attributes of person1
  print('Modified Name: ${person1.name}');
  print('Modified Age: ${person1.age}');
  print('Modified Address: ${person1.address}');
}
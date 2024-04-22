import 'dart:io';

void main() {
  const int speedOfLight = 299792458; // given speed of light by meters per second

  // User input for distance
  print("Enter the distance in meters: ");
  String userInput = stdin.readLineSync()!;
  double distance = double.parse(userInput);

  // Calculate the time for light to travel the distance
  double time = distance / speedOfLight;

  print("The time it takes for light to travel $distance meters is $time seconds.");
//  print("The time it takes for light to travel $distance meters is ${time.toStringAsFixed(6)} seconds.");

}
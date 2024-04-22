void main() {
  // Create an empty list of favorite hobbies
  List<String> favoriteHobbies = [];

  // Add hobbies to the list
  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Singing');
  favoriteHobbies.add('Watching Movies');
  favoriteHobbies.add('Painting');

  // Print the list of favorite hobbies
  print('My Favorite Hobbies are: $favoriteHobbies');

  // Check if the list is empty
  print('Is the list empty? ${favoriteHobbies.isEmpty}'); // false

  // Remove a hobby from the list
  favoriteHobbies.remove('Singing');

  // Print the updated list of favorite hobbies
  print('Updated  My Favorite Hobbies: $favoriteHobbies');

  // Sort the list in alphabetical order
  favoriteHobbies.sort();

  // Print the sorted list of favorite hobbies
  print('Sorted Favorite Hobbies: $favoriteHobbies');
}
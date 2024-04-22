// import 'dart:io';

// void readFileFromDisk(String filePath) {
//   try {
//     File file = File(filePath);

//     if (file.existsSync()) {
//       List<int> bytes = file.readAsBytesSync();
//       print("File bytes:\n$bytes");
//     } else {
//       print("Error: File not found");
//     }
//   } catch (e) {
//     if (e is FileSystemException) {
//       print("Error: File not found or unable to read the file.");
//     } else {
//       print("An error occurred: $e");
//     }
//   }
// }

// void main() {
//   String filePath =" UGR-7631-12-LAB-Exercises/Books/receiving-gods-guidance.pdf";
//   readFileFromDisk(filePath);
// }



import 'dart:io';

void main() {
  final filePath = 'path/file.txt';

  try {
    final file = File(filePath);
    final contents = file.readAsStringSync();
    print('File contents: $contents');
  } catch (e) {
    if (e is FileSystemException && e.osError?.errorCode == 2) {
      print('Error: File not found. Please provide a valid file path.');
    } else {
      print('An error occurred while reading the file: $e');
    }
  }
}
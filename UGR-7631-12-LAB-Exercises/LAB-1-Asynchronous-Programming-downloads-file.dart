import 'dart:async';
import 'dart:io';

Future<void> downloadFile(String url, String savePath) async {
  var httpClient = HttpClient();

  try {
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();

    if (response.statusCode == HttpStatus.ok) {
      var file = File(savePath);
      await file.create(recursive: true); // Create the file and necessary directories
      await response.pipe(file.openWrite());
      print('File downloaded successfully.');
    } else {
      print('Error downloading file: ${response.statusCode}');
    }
  } catch (e) {
    print('Error downloading file: $e');
  } finally {
    httpClient.close();
  }
}

void main() async {
  String url = 'https://apcwo.org/books/english/receiving-gods-guidance';
  String savePath = 'Books/receiving-gods-guidance.pdf';
  print('Downloading file...');
  await downloadFile(url, savePath);
}
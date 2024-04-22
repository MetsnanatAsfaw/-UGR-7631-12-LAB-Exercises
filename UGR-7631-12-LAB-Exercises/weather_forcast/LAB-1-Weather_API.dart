import 'dart:async';
import 'dart:convert';
import 'dart:io';

const apiKey = 'f82ba33ebfbfedf017c9f776eb5ce455'; // Weather_API_KEY
const apiUrl = 'http://api.weatherapi.com/v1/current.json?key=&q=Ethiopia&aqi=no$apiKey';

Future<void> fetchWeatherData() async {
  try {
    final httpClient = HttpClient();
    final request = await httpClient.getUrl(Uri.parse(apiUrl));
    final response = await request.close();

    if (response.statusCode == 200) {
      final responseBody = await response.transform(utf8.decoder).join();
      final data = jsonDecode(responseBody);
      final temperature = data['current']['temp_c'];
      final condition = data['current']['condition']['text'];
      
      print('Temperature: $temperature°C');
      print('Condition: $condition');
    } else {
      print('Failed to fetch weather data. Status code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error occurred while fetching weather data: $error');
  }
}

void main() {
  print('Fetching weather data...');
  fetchWeatherData();
}

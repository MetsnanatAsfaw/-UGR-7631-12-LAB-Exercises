import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  // Simulate a network delay
  await Future.delayed(Duration(seconds: 2));

  // Generate a random quote
  List<String> quotes = [
    "And know that I am with you always; yes, to the end of time.",
    "I am the Way, the Truth, and the Life. No one comes to the Father except through me.",
    "Love the Lord your God with all your heart and with all your soul and with all your mind.",
    
  
  ];
  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  print("Fetching quote...");
  String quote = await fetchQuote();
  print("Fetched quote: $quote");
}
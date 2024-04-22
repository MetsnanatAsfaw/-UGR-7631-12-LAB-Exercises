import 'dart:async';

Future<List<String>> fetchDataFromDatabase() {
  return Future.delayed(Duration(seconds: 2), () {
    // Simulating data retrieval from the database
    List<String> favorite_Singers = ['Addisu Worku', 'Tesfaye Gabisso', 'Tamirat Haile', 'Daniel A.Micael',' Workeneh Alaro', 'Dr. Dereje Kebede', 'Betelhem Wolde', 'Lili Tilahun','Azeb Hailu'];
    return favorite_Singers;
  });
}

void main() {
  print('Fetching data from the database...');

  fetchDataFromDatabase().then((data) {
    print('Data loaded successfully: $data');
  }).catchError((error) {
    print('Error occurred while loading data: $error');
  });
}
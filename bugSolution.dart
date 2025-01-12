```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error by throwing it
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    //Re-throw exception using Future.error
    return Future.error(e);
  }
}
```
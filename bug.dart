```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here
    } else {
      // Handle error here
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exception here, but don't rethrow
    print('Error fetching data: $e');
  }
}
```
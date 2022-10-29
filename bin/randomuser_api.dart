import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  Uri uri = Uri(
    scheme: 'https',
    host: 'randomuser.me',
    path: '/api',
  );
  Map<String, String> queryParams = {
    'results': '2',
  };
  http.get(uri).then((response) {
    // Convert the response to JSON
    Map json = jsonDecode(response.body);
    // Get the results
    List results = json['results'];
    // print length of results
    print(results.length);
  });
}

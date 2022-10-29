import 'package:http/http.dart' as http;

void main() {
  Uri uri = Uri.parse('https://randomuser.me/api/');
  print(uri.scheme);
  // The path component.
  print(uri.path);
  // Set the query parameters.
  uri = uri.replace(queryParameters: {'results': '10'});

  // The host component.
  print(uri.host);
  print(uri);
}

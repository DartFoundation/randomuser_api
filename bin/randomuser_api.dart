import 'package:http/http.dart' as http;

void makeRequest() async {
  Uri url = Uri(
    scheme: 'https',
    host: 'randomuser.me',
    path: '/api',
  );
// Make synchronous request
http.Response response = await http.get(url);
// Print status code
print(response.statusCode);
// Print response body
print(response.body);

}

void main() {
  makeRequest();
}

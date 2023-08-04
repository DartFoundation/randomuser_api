import 'package:http/http.dart' as http;
import 'package:randomuser_api/user.dart';
import 'dart:convert';
Future<RandomUser> makeRequest() async {
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
Map<String, dynamic> jsonResponse = jsonDecode(response.body);

String firstName = jsonResponse['results'][0]['name']['first'];
String lastName = jsonResponse['results'][0]['name']['last'];

// Create RandomUser object
RandomUser user = RandomUser(
  firstName: firstName,
  lastName: lastName,
  email: jsonResponse['results'][0]['email'],
  phone: jsonResponse['results'][0]['phone'],
);
return user;
}



void main() {
  makeRequest().then((RandomUser user) {
    print(user.firstName);
    print(user.lastName);
    print(user.email);
    print(user.phone);
  });
}

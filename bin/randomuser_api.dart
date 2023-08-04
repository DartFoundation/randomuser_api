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



// Create RandomUser object
RandomUser user = RandomUser.fromJson(jsonResponse);
return user;
}


void main() {
 Future<RandomUser> user = makeRequest();
 String firstName;
  user.then((RandomUser user) {
    firstName = user.firstName;
    print(firstName);

    
  });
  print('End of main');

}

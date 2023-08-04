import 'package:http/http.dart' as http;
void main() {
Uri url = Uri(
    scheme: 'https',
    host: 'randomuser.me',
    path: '/api',

);
// Print the info about starting the request.
print('Starting request to ${url.toString()}');
// Make the asyncronous HTTP request:
http.get(url).then((response) {
  //  Print the status code of the response.
  print(response.statusCode);
  // Print the info about the finished request.
  print('Request complete.');
});
// Print the info that the request is sent.
print('Request sent!');
}

import 'package:http/http.dart' as http;
void main() {
Uri url = Uri(
    scheme: 'https',
    host: 'randomuser.me',
    path: '/api',

);
// Print url
print(url);
}

# Dart work with API    

## Getting Started

The project is a starting point for a Dart

## Install necessary packages

- http is a Future-based library for making HTTP requests.

```bash
dart pub add http
```

## Import http package

```dart
import 'package:http/http.dart' as http;
```

Print the http package version

## Create a uri object

```dart 
Uri url = Uri(
    scheme: 'https',
    host: 'randomuser.me',
    path: '/api',

);
```

## Synchroneous request

Synchroneous request is a request that blocks the execution of the program until the response is received.

```dart
http.Response response = await http.get(url);
```

## Asynchroneous request

Asynchroneous request is a request that does not block the execution of the program while waiting for the response.

```dart
http.get(url).then((response) {
    print(response.body);
});
```

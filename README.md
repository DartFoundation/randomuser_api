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


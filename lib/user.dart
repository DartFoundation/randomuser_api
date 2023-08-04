class RandomUser {
  final String firstName;
  final String lastName;
  final String email;
  final String phone;

// Constructor
  RandomUser({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });
// Convert JSON to RandomUser object
  factory RandomUser.fromJson(Map<String, dynamic> json) {
    return RandomUser(
      firstName: json['results'][0]['name']['first'],
      lastName: json['results'][0]['name']['last'],
      email: json['results'][0]['email'],
      phone: json['results'][0]['phone'],
    );
  }

}
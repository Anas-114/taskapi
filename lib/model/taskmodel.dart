class User {
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;

  User({
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      website: json['website']
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'username': username, 'email': email,'phone':phone};
  }
}

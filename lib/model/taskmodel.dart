class User {
  final String name;
  final String username;
  final String eamil;
  final String phone;

  User({
    required this.name,
    required this.username,
    required this.eamil,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: 'name',
      username: 'username',
      eamil: 'eamil',
      phone: 'phone',
    );
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'username': username, 'email': eamil,'phone':phone};
  }
}

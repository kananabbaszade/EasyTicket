class User {
  final String id;
  final String name;
  final String surname;
  final String email;
  final String password;

  User(
      {required this.id,
      required this.name,
      required this.surname,
      required this.email,
      required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['Id'],
      name: json['Name'],
      surname: json['Surname'],
      email: json['Email'],
      password: json['Password'],
    );
  }
}

class Login {
  final String result;
  final String id;

  Login(
      {required this.result,
      required this.id});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      id: json['id'],
      result: json['result']
    );
  }
}

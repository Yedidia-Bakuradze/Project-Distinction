class Student {
  Student({
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.schoolName,
  });

  String username;
  String password;

  String firstName;
  String lastName;

  String emailAddress;
  String schoolName;

  int points = 0;
}

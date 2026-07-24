class User {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String? profileImagePath;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.profileImagePath,
  });

  String get fullName => '$firstName $lastName';
}
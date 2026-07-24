enum ApplicationStatus { pending, approved, rejected }

class Application {
  final String id;
  final String petName;
  final String petImagePath;
  final String breed;
  final DateTime submittedDate;
  final ApplicationStatus status;

  const Application({
    required this.id,
    required this.petName,
    required this.petImagePath,
    required this.breed,
    required this.submittedDate,
    required this.status,
  });
}
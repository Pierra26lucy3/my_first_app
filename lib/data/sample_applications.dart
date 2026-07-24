import 'package:my_first_app/models/application.dart';

final List<Application> sampleApplications = [
  Application(
    id: '1',
    petName: 'Rocky',
    petImagePath: 'assets/pets/bulldog.jpg',
    breed: 'Bulldog',
    submittedDate: DateTime(2026, 7, 10),
    status: ApplicationStatus.pending,
  ),
  Application(
    id: '2',
    petName: 'Zeus',
    petImagePath: 'assets/pets/doberman.jpg',
    breed: 'Doberman',
    submittedDate: DateTime(2026, 7, 5),
    status: ApplicationStatus.approved,
  ),
  Application(
    id: '3',
    petName: 'Nova',
    petImagePath: 'assets/pets/husky.jpg',
    breed: 'Husky',
    submittedDate: DateTime(2026, 6, 28),
    status: ApplicationStatus.rejected,
  ),
];
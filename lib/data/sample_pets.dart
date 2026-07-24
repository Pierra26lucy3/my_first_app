import 'package:my_first_app/models/pet.dart';

final List<Pet> samplePets = [
  Pet(
    id: '1',
    name: 'Milo',
    breed: 'Bulldog',
    imagePath: 'assets/pets/bulldog.jpg',
    ageMonths: 8,
    gender: 'Male',
    description: 'Playful and energetic, loves belly rubs.',
  ),
  Pet(
    id: '2',
    name: 'Luna',
    breed: 'Doberman',
    imagePath: 'assets/pets/doberman.jpg',
    ageMonths: 14,
    gender: 'Female',
    description: 'Calm and affectionate, great with kids.',
  ),
  Pet(
    id: '3',
    name: 'Rocky',
    breed: 'Husky',
    imagePath: 'assets/pets/husky.jpg',
    ageMonths: 24,
    gender: 'Male',
    description: 'Chill couch companion, loves naps.',
  ),
  Pet(
    id: '4',
    name: 'Bella',
    breed: 'Golden Retriever',
    imagePath: 'assets/pets/goldenretriever.jpg',
    ageMonths: 6,
    gender: 'Female',
    description: 'Curious kitten, still learning the ropes.',
  ),
];
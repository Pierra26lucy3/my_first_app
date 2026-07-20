class Pet{
  final String id;
  final String name;
  final String breed;
  final String imagePath;
  final int ageMonths;
  final String gender;
  final String description;
  final bool isAdopted;
  
  const Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.imagePath,
    required this.ageMonths,
    required this.gender,
    required this.description,
    this.isAdopted = false,
  });
}
import 'package:flutter/material.dart';
import 'package:my_first_app/configs/colors.dart';
import 'package:my_first_app/data/sample_pets.dart';

class BreedsScreen extends StatefulWidget {
  const BreedsScreen({super.key});

  @override
  State<BreedsScreen> createState() => _BreedsScreenState();
}

class _BreedsScreenState extends State<BreedsScreen> {
  String? selectedBreed;

  @override
  Widget build(BuildContext context) {
    // Unique breed names pulled from your pet data
    final breeds = samplePets.map((p) => p.breed).toSet().toList();

    // If a breed is selected, only show pets of that breed; otherwise show all
    final filteredPets = selectedBreed == null
        ? samplePets
        : samplePets.where((p) => p.breed == selectedBreed).toList();

    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset("assets/pet_background.jpg", fit: BoxFit.cover),
        ),
        Positioned.fill(
          child: Container(color: primaryColor.withValues(alpha: 0.1)),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.category, color: primaryColor, size: 28),
                    const SizedBox(width: 8),
                    const Text(
                      "Browse by Breed",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Horizontal chip row to filter by breed
                SizedBox(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ChoiceChip(
                          label: const Text("All"),
                          selected: selectedBreed == null,
                          onSelected: (_) => setState(() => selectedBreed = null),
                          selectedColor: primaryColor,
                        ),
                      ),
                      ...breeds.map((breed) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ChoiceChip(
                              label: Text(breed),
                              selected: selectedBreed == breed,
                              onSelected: (_) => setState(() => selectedBreed = breed),
                              selectedColor: primaryColor,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: filteredPets.length,
                    itemBuilder: (context, index) {
                      final pet = filteredPets[index];
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAlias,
                        elevation: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(pet.imagePath, fit: BoxFit.cover, width: double.infinity),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(pet.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                                  Text(pet.breed, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
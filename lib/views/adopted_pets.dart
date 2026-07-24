import 'package:flutter/material.dart';
import 'package:my_first_app/configs/colors.dart';
import 'package:my_first_app/data/sample_applications.dart';
import 'package:my_first_app/models/application.dart';

class AdoptedPetsScreen extends StatefulWidget {
  const AdoptedPetsScreen({super.key});

  @override
  State<AdoptedPetsScreen> createState() => _AdoptedPetsScreenState();
}

class _AdoptedPetsScreenState extends State<AdoptedPetsScreen> {
  @override
  Widget build(BuildContext context) {
    final adoptedPets = sampleApplications
        .where((app) => app.status == ApplicationStatus.approved)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Adopted Pets"),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/pet_background.jpg", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(color: Colors.white.withValues(alpha: 0.85)),
          ),
          SafeArea(
            child: adoptedPets.isEmpty
                ? const Center(
                    child: Text(
                      "You haven't adopted any pets yet.",
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: adoptedPets.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final pet = adoptedPets[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  pet.petImagePath,
                                  width: 70,
                                  height: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pet.petName,
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    pet.breed,
                                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
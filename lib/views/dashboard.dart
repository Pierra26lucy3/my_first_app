import 'package:flutter/material.dart';
import 'package:my_first_app/configs/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Positioned.fill(child: Image.asset("assets/pet_background.jpg", fit: BoxFit.cover),),
      SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.pets, color:primaryColor, size: 28),
                    const SizedBox(width: 8),
                    Text(
                      "Find Your New Best Friend",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                    ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: 4, // placeholder count until pet data is wired up
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                         clipBehavior: Clip.antiAlias,
                        elevation: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[300],
                                child: const Icon(Icons.pets, size: 40, color: Colors.white),
                                // Swap Container above for Image.asset/Image.network once pet data exists
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Pet name",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
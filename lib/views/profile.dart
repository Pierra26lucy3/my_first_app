import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/configs/colors.dart';
import 'package:my_first_app/data/sample_user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset("assets/pet_background.jpg", fit: BoxFit.cover),
        ),
        Positioned.fill(
          child: Container(color: primaryColor.withValues(alpha: 0.15)),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                CircleAvatar(
                  radius: 50,
                  backgroundColor: primaryColor.withValues(alpha: 0.2),
                  backgroundImage: currentUser.profileImagePath != null
                  ? AssetImage(currentUser.profileImagePath!):null,
                  // Swap this for backgroundImage: AssetImage(user.profileImagePath!) once wired up
                ),
                const SizedBox(height: 16),
                Text(
                  currentUser.fullName,
                  // swap for user.fullName later
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  currentUser.email, // swap for user.email later
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                const SizedBox(height: 30),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 2,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.pets, color: primaryColor),
                        title: const Text("My Adopted Pets"),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          Get.toNamed('/adopted_pets');// TODO: navigate to adopted pets list
                        },
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.favorite_border, color: primaryColor),
                        title: const Text("Saved / Favorites"),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: navigate to favorites
                        },
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.settings, color: primaryColor),
                        title: const Text("Settings"),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () {
                          // TODO: navigate to settings
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {
                    },
                    
                  icon: const Icon(Icons.logout, color: Colors.white),
                  label: const Text("Log Out", style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    minimumSize: const Size(200, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
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
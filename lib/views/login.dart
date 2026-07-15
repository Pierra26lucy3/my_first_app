import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/configs/colors.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout_rounded)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/daystarlogo.jpeg",
                  height: 300,
                  width: 220,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 300,
                      width: 220,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text('Image not found'),
                      ),
                    );
                  },
                ),
              ],
            ),
            Text(
              "Username:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color:secondaryColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person, color: primaryColor),
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Password:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color:secondaryColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock, color: primaryColor),
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () => Get.offAllNamed('/home'),
                  color: primaryColor,
                  height: 50,
                  minWidth: 200,
                  child: Text("Login", style:TextStyle(color: Colors.white)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      child: Text(
                        "Not registered? ",
                        style: TextStyle(color: secondaryColor),
                      ),
                      onTap: () {
                        Get.toNamed('/registration');
                      },
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    // TODO: add forgot password flow
                  },
                  child: Text("Forgot Password? Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

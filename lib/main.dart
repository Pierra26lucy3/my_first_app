import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/configs/route.dart';
import 'package:my_first_app/views/login.dart';

void main() {
  runApp(const GradingApp());
}

class GradingApp extends StatefulWidget {
  const GradingApp({super.key});

  @override
  State<GradingApp> createState() => _GradingAppState();
}

class _GradingAppState extends State<GradingApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      initialRoute: '/login',
      getPages: routes,
    );
  }
}


import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_first_app/views/adopted_pets.dart';
import 'package:my_first_app/views/home.dart';
import 'package:my_first_app/views/login.dart';
import 'package:my_first_app/views/registration.dart';

var routes = [
   GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/registration', page: () => RegistrationScreen()),
    GetPage(name: '/home', page: () => HomeScreen()),
    GetPage(name: '/adopted_pets', page: () => AdoptedPetsScreen()),
 ];
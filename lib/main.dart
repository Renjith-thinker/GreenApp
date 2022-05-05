import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testproject/page/home_screen.dart';
import 'package:testproject/page/login_screen.dart';
import 'page/customer.dart';
import 'page/home.dart';
import 'page/item_add.dart';
import 'page/location_add.dart';
import 'page/register.dart';
import 'page/image_import.dart';

//Future<void> main() async {
//WidgetsFlutterBinding.ensureInitialized();
//await Firebase.initializeApp();
//}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/page1',
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
        '/page6': (context) => Page6(),
        '/page7': (context) => LoginScreen(),
        '/page8': (context) => HomeScreen()
      }));
}

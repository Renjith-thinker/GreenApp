import 'package:flutter/material.dart';
import 'page/customer.dart';
import 'page/home.dart';
import 'page/item_add.dart';
import 'page/location_add.dart';
import 'page/register.dart';
import 'page/image_import.dart';



void main() => runApp(MaterialApp(initialRoute: '/page1',routes:{
  '/page1': (context) => Page1(),
  '/page2': (context) => Page2(),
  '/page3': (context) => Page3(),
  '/page4': (context) => Page4(),
  '/page5': (context) => Page5(),
  '/page6': (context) => Page6()
}));
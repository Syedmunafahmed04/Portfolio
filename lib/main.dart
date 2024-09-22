import 'package:flutter/material.dart';
import 'package:portfolio/Portfolio_Pages/HomePage.dart';
import 'package:portfolio/modes/Mobile.dart';
import 'package:portfolio/modes/Responsive.dart';
import 'package:portfolio/modes/Tablet.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        restorationScopeId: "Test",
        debugShowCheckedModeBanner: false,
        home: Responsive(
          Tablet: Tablet_View(),
          Desktop: Web_Homepage(),
          Mobile: Mobile_View(),
        )); 
  }
}

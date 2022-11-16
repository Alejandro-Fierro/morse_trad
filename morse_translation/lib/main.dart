import 'package:flutter/material.dart';

import 'screens/esp_a_morse.dart';


void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Lenguajes y Automatas 2',
      theme: ThemeData(
        
        primarySwatch: Colors.lightGreen,
      ),
      home: const EspaMorse(),
    );
  }
}




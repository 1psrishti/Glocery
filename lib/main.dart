import 'package:flutter/material.dart';
import 'package:glocery/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //TODO: Banner ???
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

//TODO: Complete all todos
//TODO: Reformat code
//TODO: Remove hardcoded values,
//TODO: Encapsulate widgets
//TODO: Add comments wherever
//TODO: Add icon
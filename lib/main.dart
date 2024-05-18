import 'package:figmaui_shopping_app/features/home/presentation/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'PlayfairDisplay'),
      theme: ThemeData(
        // fontFamily: 'PlayfairDisplay',

        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        hintColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

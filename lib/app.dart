import 'package:flutter/material.dart';
import 'package:gahoodio/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adam Charlton - Resume',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'Adam Charlton'),
    );
  }
}
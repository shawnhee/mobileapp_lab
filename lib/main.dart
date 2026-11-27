import 'package:first_lab/screen/home.dart';
import 'package:flutter/material.dart';
import "package:first_lab/block.dart";

void main() {
  runApp(const Shawn());
}

class Shawn extends StatefulWidget {
  const Shawn({super.key});

  @override
  State<Shawn> createState() => _ShawnState();
}

class _ShawnState extends State<Shawn> {
  ThemeMode _themeMode = ThemeMode.light;
  void _toggleTheme() {
    setState(() {
      if (_themeMode == ThemeMode.light) {
        _themeMode = ThemeMode.dark;
      } else {
        _themeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: HomePage(
        isDarkMode: _themeMode == ThemeMode.light,
        onToggleTheme: _toggleTheme,
      ),
    );
  }
}

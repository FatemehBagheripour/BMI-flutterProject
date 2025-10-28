import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color firstColor = Colors.white;
  Color secondColor = Colors.white;

  double _currentHeightSliderValue = 150;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: Color(0xFF24263B),
          elevation: 4,
        ),
        body: Container(
          color: Color(0xFF1E1E1E),
          child: Column(
            children: [
              ////        // sater aval

            ],
          ),
        ),
      ),
    );
  }
}

ButtonStyle iconButtonStyle() {
  return ButtonStyle(
    backgroundColor: WidgetStateProperty.all(Color(0xff8B8C9E)),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    shadowColor: WidgetStateProperty.all(Colors.black),
    elevation: WidgetStateProperty.all(3),
  );
}

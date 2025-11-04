import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final bmiValue;
  const ResultPage({super.key, required this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        backgroundColor: Color(0xFF1E1E1E),

        bottomNavigationBar: ElevatedButton(
          onPressed: () {

          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color(0xffE83D67)),
            fixedSize: WidgetStateProperty.all(Size(360, 100)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          child: Text(
            'Re-Calculate',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

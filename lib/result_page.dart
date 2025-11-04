import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final bmiValue;
  const ResultPage({super.key, required this.bmiValue});



  @override
  Widget build(BuildContext context) {
    String situationMassage;
    String descriptionMassage;

    return Scaffold(
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
        backgroundColor: Color(0xFF1C2135),
        body: Column(
          children: [
            Text('Your Result',
              style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.w600,
            ),
            ),
            Card(
              color: Color(0xFF333244),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Text('data'),
                  SizedBox(height: 30,),

                ],
              ),
            )
          ],
        ),


        bottomNavigationBar: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
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
      );

  }
}

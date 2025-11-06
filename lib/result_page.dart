import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  final bmiValue;
  final Age;
  const ResultPage({super.key, required this.bmiValue,required this.Age});



  @override
  Widget build(BuildContext context) {
    String statusMassage;
    String descriptionMassage;
    Color statusColor;
    String formattedBmi = bmiValue.toStringAsFixed(2);
    if(Age<18){
      if (bmiValue < 16) {
        statusMassage = 'Underweight ;for this age($Age)';
        descriptionMassage="You should eat more!";
        statusColor=Color(0xffD0C54E);
      }
      else if (bmiValue >= 16 && bmiValue < 22) {
        statusMassage = 'Normal ;for this age($Age)';
        descriptionMassage="You Have a Normal Body Weight,Good Job.";
        statusColor=Color(0xff21BF73);
      }
      else if (bmiValue >= 22 && bmiValue < 25) {
        statusMassage = 'Overweight ;for this age($Age)';
        descriptionMassage="Try to exercise more.";
        statusColor=Color(0xffD4773A);
      }
      else {
        statusMassage = 'Obese ;for this age($Age)';
        descriptionMassage="You need to take care of your health.";
        statusColor=Color(0xffAB1616);
      }
    }
    else {
      if (bmiValue < 18.5) {
        statusMassage = 'Underweight';
        descriptionMassage="You should eat more!";
        statusColor=Color(0xffD0C54E);
      }
      else if (bmiValue >=18.5 && bmiValue < 25) {
        statusMassage = 'Normal';
        descriptionMassage="You Have a Normal Body Weight,Good Job.";
        statusColor=Color(0xff21BF73);
      }
      else if (bmiValue >= 25 && bmiValue < 30) {
        statusMassage = 'Overweight';
        descriptionMassage="Try to exercise more.";
        statusColor=Color(0xffD4773A);
      }
      else {
        statusMassage = 'Obese';
        descriptionMassage="You need to take care of your health.";
        statusColor=Color(0xffAB1616);
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator',textAlign: TextAlign.center,),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
          backgroundColor: Color(0xFF24263B),
          shadowColor: Colors.black,
          elevation: 4,
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        backgroundColor: Color(0xFF1C2135),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Text('Your Result',
                style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 450,
                child: Card(
                  color: Color(0xFF333244),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                      Text(statusMassage,style: TextStyle(
                        color: statusColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),),

                      SizedBox(height: 30,),
                      Text(formattedBmi,style: TextStyle(
                        color: Colors.white,
                        fontSize: 64,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,),

                      SizedBox(height: 30,),
                      Text(descriptionMassage,style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                        textAlign: TextAlign.center,
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
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

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
              Row(
                children: [
                  //                 //soton cklid aval
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF24263B),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.white10,
                            offset: Offset(2, 2),
                            blurRadius: 8,
                          ),
                        ],
                      ),

                      margin: EdgeInsets.fromLTRB(8, 10, 8, 6),
                      padding: EdgeInsets.all(2),

                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            firstColor = Color(0xFFE83D67);
                            secondColor = Colors.white;
                          });
                        },

                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Color(0xFF24263B),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          minimumSize: WidgetStateProperty.all(Size(145, 160)),
                        ),
                        child: Column(
                          children: [
                            //Padding(padding: EdgeInsetsGeometry.all(1.0)),
                            Image.asset(
                              'images/material-symbols_male.png',
                              color: firstColor,
                            ),

                            Text(
                              'Male',
                              style: TextStyle(color: firstColor, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ////                  // soton cklid dovom
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF24263B),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.white10,
                            offset: Offset(2, 2),
                            blurRadius: 8,
                          ),
                        ],
                      ),

                      margin: EdgeInsets.fromLTRB(8, 10, 8, 6),
                      padding: EdgeInsets.all(2),

                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            firstColor = Colors.white;
                            secondColor = Color(0xFFE83D67);
                          });
                        },

                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            Color(0xFF24263B),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          minimumSize: WidgetStateProperty.all(Size(145, 160)),
                        ),
                        child: Column(
                          children: [
                            //Padding(padding: EdgeInsetsGeometry.all(1.0)),
                            Image.asset(
                              'images/material-symbols_female.png',
                              color: secondColor,
                            ),

                            Text(
                              'Female',
                              style: TextStyle(
                                color: secondColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ////        sater dovome ; person height
              Container(
                height: 170,
                decoration: BoxDecoration(
                  color: Color(0xFF24263B),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.white10,
                      offset: Offset(2, 2),
                      blurRadius: 8,
                    ),
                  ],
                ),

                margin: EdgeInsets.fromLTRB(8, 15, 10, 6),
                padding: EdgeInsets.all(2),

                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      'Height',
                      style: TextStyle(color: Color(0xFF8B8C9E), fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '${_currentHeightSliderValue.round().toString()} cm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Slider(
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      value: _currentHeightSliderValue,
                      min: 50,
                      max: 250,
                      activeColor: Color(0xFFE83D67),
                      label: _currentHeightSliderValue.round().toString(),

                      onChanged: (double value) {
                        setState(() {
                          _currentHeightSliderValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),


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

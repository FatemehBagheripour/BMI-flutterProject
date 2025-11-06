import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      home: const HomePage(), // صفحه اصلی واقعی
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color firstColor = Colors.white;
  Color secondColor = Colors.white;

  double _currentHeightSliderValue = 150;
  double _currentWeight = 50;
  int _currentAge = 20;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
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
              centerTitle: true,
            ),
            backgroundColor: Color(0xFF1E1E1E),
            body: Column(
                children: [
                  ////        // first row , person gender
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      //                 //male button
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
        
                          margin: EdgeInsets.fromLTRB(8, 10, 8, 8),
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
                      ////                  // female button
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
        
                          margin: EdgeInsets.fromLTRB(8, 10, 8, 8),
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
        
                  ////       second row; person height
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
        
                    margin: EdgeInsets.fromLTRB(8, 15, 10, 8),
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
        
                  //// third row; person weight and age
                  Row(
                    children: [
                      //weight box
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(8, 10, 8, 6),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Weight',
                                style: TextStyle(
                                  color: Color(0xFF8B8C9E),
                                  fontSize: 20,
                                ),
                              ),
                              // show tha user weight
                              Text(
                                _currentWeight.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              // the icon buttons to increase and decrease weight
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //to decrease
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _currentWeight -= 1;
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                    style: iconButtonStyle(),
                                  ),
                                  SizedBox(width: 20),
                                  //to increase
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _currentWeight += 1;
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                    style: iconButtonStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
        
                      SizedBox(width: 5),
                      // age box
                      Flexible(
                        fit: FlexFit.tight,
        
                        child: Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.fromLTRB(8, 10, 8, 6),
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
                          child: Column(
                            children: [
                              Text(
                                'Age',
                                style: TextStyle(
                                  color: Color(0xFF8B8C9E),
                                  fontSize: 20,
                                ),
                              ),
                              // show tha user weight
                              Text(
                                _currentAge.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              //button rows
                              // the icon buttons to increase and decrease weight
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _currentAge -= 1;
                                      });
                                    },
                                    icon: Icon(Icons.remove),
                                    style: iconButtonStyle(),
                                  ),
                                  SizedBox(width: 20),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _currentAge += 1;
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                    style: iconButtonStyle(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            
            // Calculate buttons bottom navigator
            bottomNavigationBar: ElevatedButton(
              onPressed: () {
                double heightInMeters=_currentHeightSliderValue/100;
                double bmi = _currentWeight / pow(heightInMeters, 2);
        
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(bmiValue: bmi,Age:_currentAge),
                  ),
                );
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
                'Calculate',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
          ),
      ),

    );
  }
}
// the style of increase and decrease icon button
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

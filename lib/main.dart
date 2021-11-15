import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled1/ResultPage.dart';
import 'enum_file.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            'BMI CALCULATOR',
          ),
          centerTitle: true,
        ),
        body: Center(
          child: firstPage(),
        ),
      ),
    );
  }
}

int height = 150;
int weight = 30;
int age = 30;
Gender select=Gender.male;
class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
setState(() {
  select=Gender.male;
});
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                        color: select==Gender.male? Colors.indigo:
                            Colors.teal

                        ),
                        margin: EdgeInsets.all(15),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text('MALE'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
setState(() {
  select=Gender.female;
});
                      },
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                            color: select==Gender.female? Colors.indigo:
                            Colors.teal),
                        margin: EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                              color: Colors.white,
                            ),
                            Text(
                              'FEMALE',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            'HEIGHT',
                            style: TextStyle(fontSize: 15, color: Colors.cyan),
                          ),
                          Text(
                            height.toString() + ' cm',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Slider(
                            value: height.toDouble(),
                            min: 100.0,
                            max: 200.0,
                            onChanged: (double value) {
                              setState(() {
                                height = value.toInt();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Text(
                            'WEIGHT',
                            style: TextStyle(fontSize: 15, color: Colors.cyan),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  backgroundColor: Colors.cyan,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight=weight+1;
                                        });
                                      }, icon: Icon(Icons.add)),
                                ),
                              ),
                              Expanded(
                                child: CircleAvatar(
                                  backgroundColor: Colors.cyan,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight=weight-1;
                                        });
                                      }, icon: Icon(FontAwesomeIcons.minus)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Text(
                            'AGE',
                            style: TextStyle(fontSize: 15, color: Colors.cyan),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CircleAvatar(
                                  backgroundColor: Colors.cyan,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age=age+1;
                                        });
                                      }, icon: Icon(Icons.add)),
                                ),
                              ),
                              Expanded(
                                child: CircleAvatar(
                                  backgroundColor: Colors.cyan,
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          age=age-1;
                                        });
                                      }, icon: Icon(FontAwesomeIcons.minus)),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                color: Colors.blue,
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(weight:weight, height:height,age:age )));
                  },
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(fontSize: 24),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

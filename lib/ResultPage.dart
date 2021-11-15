import 'package:flutter/material.dart';
import 'package:untitled1/main.dart';
import 'Formula.dart';
class ResultPage extends StatefulWidget {

  int weight=0;
  int height=0;
  int age=0;

ResultPage({ required this.weight,required this.height,required this.age});

  @override
  _ResultPageState createState() => _ResultPageState();
}


class _ResultPageState extends State<ResultPage> {
  Logic logic= Logic();
  double bmiResult=0;
  @override
  void initState() {
    bmiResult=logic.calculate(widget.height, widget.weight);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          'YOUR RESULT',
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [

           Expanded(child: Container(
             padding: EdgeInsets.all(15),
             color: Colors.cyan,

           child:  Column(children: [
             Expanded(child: Center(

               child: Container(

                 color: Colors.cyan,child: Text(logic.message(),style:TextStyle(
                   fontSize: 15,
                   color: Colors.white,
                   fontWeight: FontWeight.bold),),),
             ),),
             Expanded(
               flex: 5,
               child: Center(
                 child: Text('${bmiResult.toStringAsFixed(1)}', style:TextStyle(
                     fontSize: 45,
                     color: Colors.white,
                     fontWeight: FontWeight.bold),  ),
               ),
             ),
             Expanded(flex:3 ,child: Center(
               child: Container(

                 color: Colors.cyan,child: Text(logic.massage2(),style:TextStyle(
                   fontSize: 15,
                   color: Colors.white,
                   fontWeight: FontWeight.bold),),),
             ),),
           ],

           ),
           )),

           Container(
               color: Colors.blue,
               height: 50,
               width: double.infinity,
               child: ElevatedButton(
                 onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                 },
                 child: Text(
                   'RECALCULATE',
                   style: TextStyle(fontSize: 24),
                 ),
               )),
         ],
        ),
      ),
    );
  }
}

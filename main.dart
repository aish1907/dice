

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

 int left=1;
 int right=2;
 void changeFace(){
   left=Random().nextInt(6)+1;
   right=Random().nextInt(6)+1;
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea(
        child:Scaffold(
          backgroundColor: Colors.cyanAccent,
          appBar: AppBar(
            title: Text("dice"),
          ),
          body:Center(child:Container(

            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(30.0),
            child: Row(
              children: [
                Expanded(child: FlatButton(
                  child: Image.asset("Images/dice$left.png"),
                  onPressed:(){
                    setState(() {
                      changeFace();
                    });
                  }
                )),
                Expanded(child: FlatButton(
                    child: Image.asset('Images/dice$right.png'),
                    onPressed:(){
                      setState(() {
                        changeFace();
                      });
                    }
                ))
              ],

            ),
          ),)
        )
      )
    );
  }
}

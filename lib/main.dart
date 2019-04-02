import 'package:flutter/material.dart';
import 'package:fllnew/fristpage.dart';
// import 'package:fllnew/scendpage.dart';
import 'scendpage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String,WidgetBuilder>{
        '/secnd' :(BuildContext context) => new scandpage(),
      },
      home: fristpage()
      
    );
  }
}

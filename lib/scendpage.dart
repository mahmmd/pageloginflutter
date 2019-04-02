import 'package:flutter/material.dart';


class scandpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(),
      body :new Center(
        child :new Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          
          gradient: new RadialGradient(
            colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
        center: Alignment(0.0, 0.0),
        radius: 0.5,
        tileMode: TileMode.clamp,
        stops: [0.3, 0.5, 0.9, 1.0]
            
            
          ),
          image: new DecorationImage(
            image: new NetworkImage("http://jlouage.com/images/author.jpg"),
            colorFilter: new ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.src),
          )
        ),
        width: 200,
        height: 200,
        child: new Center(
          child: Text("data"),
          
          
        ),
        
      )
      )
      
    );
  }
}
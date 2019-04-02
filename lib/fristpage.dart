import 'package:flutter/material.dart';
import 'package:fllnew/scendpage.dart';
class fristpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
             AppBar(),
             ListTile(
               title: Text("Secnd page"),
               onTap: (){
                 Navigator.of(context).pop();
                 Navigator.of(context).push(
                   MaterialPageRoute(builder: (BuildContext context)=> scandpage())
                 );
               },
             )
            ],
          ),
        ),
        
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                    child: Text(
                      'Hallo',
                      style:TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                    child: Text(
                      'There',
                      style:TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(230.0, 175.0, 0.0, 0.0),
                    child: Text(
                      '.',
                      style:TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold , color: Colors.green
                      )
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 35.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                      )
                    ),
                  ),
                  SizedBox(height: 20.0,) ,
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green)
                      )
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0,left: 20.0),
                    child: InkWell(
                      onTap: (){},
                      child: Text('Forgot Password',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      ),
                      ),
                      
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/secnd');
                        },
                        child: Center(
                          child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Icon(Icons.face,color: Colors.black,),

                            ),
                            SizedBox(width: 10.0,),
                          Center(
                            child: Text('Login in Fcebook',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              
                            ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 15.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Now to Spotify!'
                 
                ),
                SizedBox(width: 5.0,),
                InkWell(
                  onTap: (){},
                  child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                  ),
                ),
                )
              ],
              )
          ],
        )
      );
  }
}
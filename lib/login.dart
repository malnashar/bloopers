import 'package:flutter/material.dart';
import 'appbar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Center(

        child: new Container(

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[




              new Text("WELCOME",
                style: new TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),





              new Text("                         Feel free to Sign Up now..",
                style: new TextStyle(
                  color: Colors.white70,
                  fontSize: 11.0,)
                ,),




              new SizedBox(
                height: 25.0,
              ),



              new Container(
                height: 37.0,
                width: 300.0,
                decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(25.0),
                ),
                child: new TextField(
                  style: TextStyle(fontSize: 22.0,color: Color(0xFF989899)),
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 30.0,top: 2.0),
                    hintStyle: TextStyle(color: Color(0xFFD7D7D9),fontSize: 15.0),
                  ),
                ),

              ),




              new SizedBox(
                height: 10.0,
              ),



              Container(
                width: 200.0,
                height: 40.0,
                child: new RaisedButton(
                  child: new Text("login" , style: new TextStyle(fontSize: 22.0, color: Color(0xFFF9F9FA)),),
                  color: Color(0xFF2699FB),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sample1()),
                    );
                  },
                ),
              ),





              new SizedBox(
                height: 25.0,
              ),



              new Text("or",
                  style: new TextStyle(
                    color: Colors.white70,
                    fontSize: 15.0,)),




              new SizedBox(
                height: 6.0,
              ),



              new Text("Connect with your Gmail account",
                  style: new TextStyle(
                    color: Colors.white70,
                    fontSize: 15.0,)),




              new SizedBox(
                height: 10.0,
              ),




              new InkWell(
                child: new Text(
                  "Sign in With Gmail",
                  style: new TextStyle(
                      color: Colors.blue,
                      fontSize: 17.0
                  ),
                ),
                onTap: () => debugPrint("recover now"),
              )




            ],
          ),
        ),


      ),
    );

  }
}

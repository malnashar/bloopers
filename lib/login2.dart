import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'appbar.dart';
import 'slides.dart';

class Login2 extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Center(

        child: new Container(

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[




              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs: 3,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                    xs: 6,
                    child: new FittedBox(
                      fit: BoxFit.fitWidth,
                      child: new Text("WELCOME",
                      style: new TextStyle(
                        color: Colors.white,
                        //fontSize: 30.0,
                      ),
                      ),
                    )

                  ),

                ],
              ),



              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs: 3,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                      xs: 6,
                      child: new FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text("                         Feel free to Sign Up now..",
                          style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 11.0,)
                          ,),
                      )

                  ),

                ],
              ),




              new ResponsiveGridRow(
                children: [
                    new ResponsiveGridCol(
                      xs:12,
                      child: new SizedBox(
                        height: 25.0,
                      ),
                    )
                ],
              ),

              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs: 1,
                    //md:1,
                    //lg:5,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                      xs: 10,
                    //md: 10,
                    //lg: 2,
                      child: new Container(
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


                  )
                ],
              ),



              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs : 12,
                    child: new SizedBox(
                      height: 10.0,
                    ),
                  )
                ],
              ),



              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs:3,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                    xs : 6,
                    child: Container(
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
                  )
                ],
              ),


              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs : 12,
                    child: new SizedBox(
                      height: 25.0,
                    ),
                  )
                ],
              ),





              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs: 5,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                      xs: 2,
                      child: new FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text("       or       ",
                          style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 11.0,)
                          ,),
                      )

                  ),

                ],
              ),



              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs : 12,
                    child: new SizedBox(
                      height: 6.0,
                    ),
                  )
                ],
              ),




              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs: 2,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                      xs: 8,
                      child: new FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new Text("   Connect with your Gmail account   ",
                          style: new TextStyle(
                            color: Colors.white70,
                            fontSize: 11.0,)
                          ,),
                      )

                  ),

                ],
              ),



              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs : 12,
                    child: new SizedBox(
                      height: 12.0,
                    ),
                  )
                ],
              ),

              new ResponsiveGridRow(
                children: [
                  new ResponsiveGridCol(
                    xs: 4,
                    child: new Container(),
                  ),
                  new ResponsiveGridCol(
                      xs: 4,
                      child: new FittedBox(
                        fit: BoxFit.fitWidth,
                        child: new InkWell(
                          child: new Text(
                            "Sign in With Gmail",
                            style: new TextStyle(
                                color: Colors.blue,
                                fontSize: 15.0
                            ),
                          ),
                          onTap: () => debugPrint("recover now"),
                        )
                      )

                  ),

                ],
              ),

















            ],
          ),
        ),


      )
    );

  }
}

import 'package:adaptive/slides.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Sample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),


        appBar: MyCustomAppBar( context),
        body: new Stack(

          children: <Widget>[
            new Positioned(
              left: 0.0,
              right: 0.0,
              top: 0.0,
              bottom: 300.0,
              child: new CarouselDemo(),
            ),


            new Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              top: 150.0,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/wihte background.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            )

          ],
        )
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  double height;

  MyCustomAppBar(BuildContext context){
    this.height = MediaQuery.of(context).size.height;
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height/2*0.3,
      decoration: new BoxDecoration(
        color: Colors.red,
        borderRadius: new BorderRadius.only(bottomLeft: Radius.circular(15.0) , bottomRight: Radius.circular(15.0)),
      ),
      //color: Colors.redAccent,
      padding: EdgeInsets.all(5),
      child: Column(
          children: [
            new Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu , color: Colors.white,size: 38.0,),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),

                new Text("Bloopers.  ",
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 28.0
                  ),)



              ],
            ),

            new ResponsiveGridRow(
              children: [
                new ResponsiveGridCol(
                  xs: 1,
                  child: new Container(),
                ),
                new ResponsiveGridCol(
                  xs: 10,
                  child: new Container(
                    height: 37.0,
                    width: 290.0,
                    decoration: new BoxDecoration(
                      color: Colors.white70,
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    child: new TextField(

                      style: TextStyle(fontSize: 22.0,color: Colors.grey),

                      decoration: new InputDecoration(

                        hintText: "What are you looking for ?" ,
                        prefixIcon: new Container(
                          margin: EdgeInsets.only(bottom: 3.0 , top: 3.0),
                          width: 0.025,
                          height: 0.025,
                          decoration: new BoxDecoration(

                            shape: BoxShape.circle,
                            color: Colors.grey,

                          ),
                          child: new Icon(Icons.search, color: Colors.white70,size: 20.0,),

                        ),



                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10.0,top: 4.0),
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15.0),
                      ),
                    ),

                  ),
                )
              ],
            ),
          ]),


    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
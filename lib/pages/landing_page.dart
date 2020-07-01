import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/drawer.dart';


class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final SnackBar snackBar = const SnackBar(content: Text('This is a Snackbar'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        leading: IconButton(
//              icon: Icon( Icons.account_circle, size: 40.0, color: Colors.blueGrey,),
//                      onPressed: (){},
//                    ),

          title: Text('Driver Terminal', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.location_searching, size: 26.0, color: Colors.blueGrey,),
              onPressed: (){},
                ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.5, 0.0, 1.0, 0.5),
            child: IconButton(
              icon: Icon( Icons.more_vert, size: 26.0, color: Colors.blueGrey,),
                tooltip: 'Show SnackBar', onPressed: (){
                  scaffoldKey.currentState.showSnackBar(snackBar);
                  },
            ),
          )
        ],
      ),

        drawer: UserDrawer(),










        floatingActionButton: FloatingActionButton(
          onPressed: (){}, tooltip: 'Increment',
          child: Icon(Icons.autorenew),),
            floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8.0),
                boxShadow: [ BoxShadow(
                  color: Color.fromRGBO(143, 148, 251, .8),
                  blurRadius: 20.0, offset: Offset(0, 10),)
                ]
            ),
            padding: EdgeInsets.only(left: 20.0, right: 55.0), height: 55.0,
              child: Row(
                children: <Widget>[
                  Expanded( flex: 1,
                    child: FlatButton(
                      child: Text('TRIP STOP', style: TextStyle(fontSize: 16.0),),
                        textColor: Colors.blueGrey,
                        onPressed: (){}),
                    ),

                  VerticalDivider(width: 2.0, thickness: 2.0, color: Colors.blueGrey),

                Expanded( flex: 1,
                  child: FlatButton(
                    child: Text('SUMMARY', style: TextStyle(fontSize: 16.0),),
                    textColor: Colors.blueGrey,
                    onPressed: (){}),
                ),
            ],
              ),
          ),

        ),
    );
  }
}

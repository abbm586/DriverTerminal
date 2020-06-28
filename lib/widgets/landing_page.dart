import 'package:flutter/material.dart';


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
        leading: IconButton(
          icon: Icon( Icons.list,
            size: 26.0, color: Colors.blueGrey,
            ),
          onPressed: (){},
          ),
        title: Text('Driver Terminal',
          style: TextStyle(fontWeight: FontWeight.bold),
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon( Icons.location_searching,
                      size: 26.0, color: Colors.blueGrey,
            ),
            onPressed: (){},
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10.5, 0.0, 1.0, 0.5),
            child: IconButton(
              icon: Icon( Icons.details,
                size: 26.0, color: Colors.blueGrey,),
              tooltip: 'Show SnackBar',
              onPressed: (){
                scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),
          )
        ],
          ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 55.0, padding: EdgeInsets.only(left: 20.0, right: 55.0),
            decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [BoxShadow(color: Color.fromARGB(143, 148, 251, 1),
                  blurRadius: 20.0, offset: Offset(0, 10))]
        ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: FlatButton(child: Text('Completed'),
                    textColor: Colors.blue, onPressed: (){}),
                ),
              ),

              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: FlatButton(child: Text('Yesterday'),
                      textColor: Colors.blue, onPressed: (){}),
                ),
              ),

              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: FlatButton(child: Text('Monthly'),
                      textColor: Colors.blue, onPressed: (){}),
                ),
              ),
            ],
          )
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: Icon(Icons.change_history),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,

      );

    }
}

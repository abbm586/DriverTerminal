import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:simple_animations/simple_animations.dart';

//import 'package:flutterapp/init_setup/branch_list.dart';

class InitSetup extends StatefulWidget {
  @override
  _InitSetupState createState() => _InitSetupState();
}

class _InitSetupState extends State<InitSetup> {

  String selectedValue = 'none';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Positioned(
                left: 25.0,
                child: Text('Select a Branch:', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Positioned(
                right: 25.0,
                child: DropdownButton<String>(
                  value: selectedValue,
                  icon: Icon(Icons.keyboard_arrow_down), iconSize: 24, elevation: 16,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
                  underline: Container(
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [ BoxShadow( color: Color.fromRGBO(143, 148, 251, .6),
                          blurRadius: 20.0, offset: Offset(0, 10),)]
                    ),
                    height: 4, ),
                    onChanged: (String newValue) {
                      setState(() { selectedValue = newValue; });
                  },
                  items: <String>['none', 'Centurion', 'Randburg', 'Pretoria', 'Johannesburg']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value, child: Text(value),);
                  }).toList(),
                ),
              ),
            ],
          )
        ],


      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Continue',
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

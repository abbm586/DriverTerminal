//import 'package:flutter/material.dart';
//
//class DropDownCard extends StatelessWidget{
//  const dropDownCard
//
//}
//DropdownButton<String>(
//value: selectedValue,
//icon: Icon(Icons.keyboard_arrow_down), iconSize: 24, elevation: 16,
//style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),
//underline: Container(
//decoration: BoxDecoration(
//color: Colors.white, borderRadius: BorderRadius.circular(8.0),
//boxShadow: [ BoxShadow( color: Color.fromRGBO(143, 148, 251, .6),
//blurRadius: 20.0, offset: Offset(0, 10),)]
//),
//height: 4, ),
//onChanged: (String newValue) {
//setState(() { selectedValue = newValue; });
//},
//items: <String>['none', 'Centurion', 'Randburg', 'Pretoria', 'Johannesburg']
//.map<DropdownMenuItem<String>>((String value) {
//return DropdownMenuItem<String>(
//value: value, child: Text(value),);
//}).toList(),
//)
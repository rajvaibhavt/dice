import 'package:flutter/material.dart';
class Styletext extends StatelessWidget {
   Styletext(this.text,{super.key});
 final String text ;
  @override
  Widget build( context) {
    return Text(
      text
      ,
      style: const TextStyle(fontSize: 30, color: Colors.white),
    );
  }
}

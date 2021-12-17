import 'package:flutter/material.dart';

void  main(List<String> args) {
  runApp(MaterialApp(
    title: 'Row-Column Practice',
    home: Scaffold(
      body: colprac(),),
  ));
}
 class colprac extends StatelessWidget {
   
 
   @override
   Widget build(BuildContext context) {
     return Column(
       children: [
         Text ("This is Hibernate Position")
       ],
     );
   }
 }
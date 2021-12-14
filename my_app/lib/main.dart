import 'package:flutter/material.dart';

void  main(List<String> args) {
  runApp(MaterialApp(
    title: 'My First App',
    home: Scaffold(body: MyApp()),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton("Click!"),
            SizedBox(height: 10,),
            CustomButton("Pressed"),
            SizedBox(height: 10,),
            CustomButton("What"),
            SizedBox(height: 10,),
            CustomButton("Stop"),
        ],),
        );
  }
}

class CustomButton extends StatelessWidget{
  final String title;

  CustomButton(this.title);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('Pressed');
      },
      child: Container(
        height: 40 ,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.pink[200],
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void  main(List<String> args) {
  runApp(MaterialApp(
    title: 'My First App',
    home: Scaffold(body:ListViewBuilder())),);
  
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

class container_p extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Less Boring', style: TextStyle(fontSize: 70,),),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      margin: EdgeInsets.all(25.0),
      padding: EdgeInsets.all(40.0),
      
    );
  }
}

class MyApp3 extends StatefulWidget {
  @override
  _MyApp3State createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Item 1"),
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber[400]
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
         ListTile(
          title: Text("Item 1"),
           leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber[400]
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        ),
         ListTile(
          title: Text("Item 1"),
           leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amber[400]
            ),
          ),
          trailing: Icon(Icons.arrow_forward),
        )
      ],
    );
  } 
}

class ChangeButton extends StatefulWidget {

  @override
  _ChangeButtonState createState() => _ChangeButtonState();
}

class _ChangeButtonState extends State<ChangeButton> {
  String txt = "";
  @override
  void initState() {
    txt = "Hello! I am Ofa.";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt),
          ElevatedButton(onPressed:(){
            setState(() {
              txt ="Hi! Ofa! How are you?";
            });
            print ("OnPressed $txt");
          } , 
          child: Text("Change"))
        ],
      )),
    );
  }
}

 class colprac extends StatelessWidget {
   
 
   @override
   Widget build(BuildContext context) {
     return Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Text ("This is Hibernate Position",),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text("ok"),
        //     Text(""),
        //     Text("ok")
        //   ],
         ),
        // Text("No"),
        // Text("No")
       ],
     );
   }
 }

 class RowPrac extends StatelessWidget {
 
   @override
   Widget build(BuildContext context) {
     return Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text("Joy Bangla",),
         Text("Joy Bangla"),
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
         Text("Joy Bangla"),
         Text("Joy Bangla"),
         Text("Joy Bangla"),
         Text("Joy Bangla"),

         ],),
         Text("Joy Bangla"),
         Text("Joy Bangla"),
       ],
     );
   }
 }

 class ListViewBuilder extends StatefulWidget {
 
   @override
   _ListViewBuilderState createState() => _ListViewBuilderState();
 }
 
 class _ListViewBuilderState extends State<ListViewBuilder> {
   List<int> list = List.generate(51, (i) => i);
  //  List<int> list = List.generate(length, (index) => null)
 
   @override
   Widget build(BuildContext context) {
     return ListView.builder(
       itemCount: list.length,
       itemBuilder: (BuildContext cnx, int index){
         return ListTile(
           title: Text("Item no ${list [index]}"),
           leading: Container(
             height: 50,
             width: 50,
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               color: Colors.pink
             ),
             child: Center(
               child: Text("${list [index]}")),
           ),
           trailing: Icon(Icons.arrow_forward),
         );
       },
     );
   }
 }


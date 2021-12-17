import 'package:flutter/material.dart';

void main() => runApp( ListViewApp());

class ListViewApp extends StatefulWidget {

  @override
  _ListViewAppState createState() => _ListViewAppState();
}

class _ListViewAppState extends State<ListViewApp> {
 final List<String> entries = [];
 final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    entries.sort();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: textController,
          ),
          ),
          body: entries.length > 0
          ? ListView.separated(
            itemCount: entries.length,
            itemBuilder: (context, index){
              return ListTile(
                leading: Icon(Icons.local_grocery_store),
                title: Text('${entries[index]}'),
                onLongPress: (){
                  setState(() {
                    entries.removeAt(index);}
                  );
                },
                trailing: Icon(Icons.remove_circle_outline),
              );
            },
            separatorBuilder: (BuildContext context,int index) =>
             const Divider(),
            )
            : Center(
              child: Text('No Groceries in Your List'),
            ),
            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.save),
              onPressed: (){
                setState(() {
                  entries.add(textController.text);
                  textController.clear();
                });
              },),
          ),
      
    );
  }
}
 
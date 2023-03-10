import 'package:flutter/material.dart';
import 'package:notes_app/pages/add_todo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("todo"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.done_outline),
              onLongPress: () {
                //delete function with firebase
              },
              title: Text("Task 1"),
              tileColor: Colors.grey,
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_outlined),
          mini: true,
          backgroundColor: Colors.blue,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      backgroundColor: Colors.grey,
                      title: Text("Add Todo"),
                      actions: [
                        ElevatedButton(
                            onPressed: () {
                              //add function here with firebase later
                              Navigator.pop(context);
                            },
                            child: Text("Add"))
                      ],
                      content: TextField(
                        decoration: InputDecoration(hintText: "Enter here"),
                      ),
                    ));
          },
        ));
  }
}

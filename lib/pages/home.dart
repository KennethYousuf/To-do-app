import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("To-do"),
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
          backgroundColor: Colors.black,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      backgroundColor: Colors.grey,
                      title: Text("Add Todo"),
                      actions: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black),
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

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _todos =  [];
  TextEditingController taskController = TextEditingController();

  // void saveTask() {
  //   String task = taskController.text.trim();

  //   if (task != "") {
  //     Map<String, dynamic> userTasks = {"task": task};
  //     FirebaseFirestore.instance.collection("task").add(userTasks);
  //   } else {
  //     print("Please fill task");
  //   }
  // }

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
                        CupertinoButton(
                            color: Colors.black,
                            onPressed: () {
                              //add function here with firebase later
                              // saveTask();
                              setState(() {});
                              Navigator.pop(context);
                            },
                            child: Text("Add"))
                      ],
                      content: TextField(
                        controller: taskController,
                        decoration: InputDecoration(hintText: "Enter here"),
                      ),
                    ));
          },
        ));
  }
}

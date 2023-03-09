import 'package:flutter/material.dart';

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
    );
  }
}

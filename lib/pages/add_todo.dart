import 'package:flutter/material.dart';

openDialog() {
  AlertDialog(
    title: Text("Add Todo"),
    actions: [ElevatedButton(onPressed: () {}, child: Text("Add"))],
    content: TextField(
      decoration: InputDecoration(hintText: "Enter here"),
    ),
  );
}

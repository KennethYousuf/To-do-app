import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/pages/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Map<String, dynamic> newtask = {"task": "Do H.W"};
  await _firestore.collection("tasks").doc("2").set(newtask);

  //for fetching whole collection of data
  //and for specific data Query will be replaced by Document
  //QuerySnapshot snapshot= await FirebaseFirestore.instance.collection("tasks").get();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

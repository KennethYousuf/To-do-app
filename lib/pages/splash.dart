import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notes_app/pages/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "ToDo",
        style: TextStyle(
          fontSize: 32,
          color: Colors.grey,
        ),
      ),
    );
  }
}

// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:frenchify/main.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyApp()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        ),
        body: Center(
          child: Image.asset(
            'assets/images/splash.png',
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/Pages/home.dart';

class Translator extends StatelessWidget {
  const Translator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Translator'),
        // ignore: prefer_const_constructors
      ),
      drawer: const Drawers(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/ok.png', fit: BoxFit.fitHeight)
            ],
          ),
        ),
      )),
    );
  }
}

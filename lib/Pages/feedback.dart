// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Feedback'),
      ),
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

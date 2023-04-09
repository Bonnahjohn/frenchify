// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/Pages/home.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.note_add)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Personal Study'),
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

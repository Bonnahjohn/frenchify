// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/Pages/configuration.dart';
import 'package:frenchify/advan/Letter/config.dart';
import 'package:frenchify/main.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('About Us'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[Text(myNote)],
          ),
        ),
      )),
    );
  }
}

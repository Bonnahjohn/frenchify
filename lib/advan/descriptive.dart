// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'config.dart';

class Descriptive extends StatelessWidget {
  const Descriptive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Descriptive Essay'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                desIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              InteractiveViewer(
                child: Image.asset(
                  'assets/images/two.jpeg',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InteractiveViewer(
                child: Image.asset(
                  'assets/images/three.jpeg',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InteractiveViewer(
                child: Image.asset(
                  'assets/images/four.jpeg',
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm


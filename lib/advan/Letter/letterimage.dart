// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Formal letter images'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Here is an a sample images showing how to write formal letter.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              InteractiveViewer(
                  boundaryMargin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  panEnabled: true,
                  scaleEnabled: true,
                  maxScale: 3,
                  minScale: 0.5,
                  child: Image.asset(
                    'assets/images/formal.png',
                  )),
              SizedBox(
                height: 40,
              ),
              InteractiveViewer(
                  boundaryMargin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  panEnabled: true,
                  scaleEnabled: true,
                  maxScale: 3,
                  minScale: 0.5,
                  child: Image.asset(
                    'assets/images/sam.jpeg',
                  )),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(100, 149, 237, 1),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
    );
  }
}

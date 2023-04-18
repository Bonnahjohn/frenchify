// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/advan/Letter/formal.dart';
import 'package:frenchify/advan/content.dart';
import 'package:frenchify/advan/descriptive.dart';
import 'package:frenchify/advan/sentence.dart';
import 'package:frenchify/main.dart';

class AdvanIntro extends StatelessWidget {
  const AdvanIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('Sentence structure'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sentence()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Descriptive Essay'),
                subtitle: Text('Essai descriptif'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Descriptive()));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Letter Writing'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Letter()));
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}

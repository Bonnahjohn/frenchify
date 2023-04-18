// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/advan/content.dart';
import 'package:frenchify/advan/Letter/informal.dart';
import 'package:frenchify/advan/Letter/formal.dart';
import 'package:frenchify/advan/Letter/letterimage.dart';

class Letter extends StatelessWidget {
  const Letter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text(' Letter Writing'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('Informal letter'),
                  subtitle: Text('Lettre informelle'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Informal()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Formal Letter'),
                  subtitle: Text('Lettre formelle'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Formal()));
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}

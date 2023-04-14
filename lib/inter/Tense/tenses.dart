// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Tenses extends StatelessWidget {
  const Tenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Present tense'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pushNamed(context, '/noun');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.arrow_downward),
                  title: Text('Past tense'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_left),
                  onTap: () {
                    Navigator.pushNamed(context, '/pronoun');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.arrow_right),
                  title: Text('Future tense'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

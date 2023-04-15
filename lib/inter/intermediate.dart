// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class Intermediate extends StatelessWidget {
  const Intermediate({super.key});

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
                leading: Icon(Icons.abc_sharp),
                title: Text('Nouns and Articles'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/noun');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Pronouns'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/pronoun');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Verbs'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/verb');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/tense.jpg',
                    width: 60, height: 50),
                title: Text('Tenses'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/tense');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/adverb.jpg',
                    width: 60, height: 100),
                title: const Text('Adverbs'),
                subtitle: const Text(""),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/adverb');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/adjective.jpg',
                    width: 60, height: 100),
                title: Text('adjectives'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/adjective');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/prep.png',
                    width: 60, height: 50),
                title: Text('prepositions'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/preposition');
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

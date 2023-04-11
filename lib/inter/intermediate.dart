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
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Pronouns'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Verbs'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Tenses'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.timeline),
                title: Text('conjunctions'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.color_lens),
                title: const Text('Adverbs'),
                subtitle: const Text(""),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.family_restroom),
                title: Text('adjectives'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('prepositions'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
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

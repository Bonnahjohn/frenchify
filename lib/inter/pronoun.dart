// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Pronoun extends StatelessWidget {
  const Pronoun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Pronoun'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                nounIntro,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Pron(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                nounFooter,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class Pron extends StatelessWidget {
  const Pron({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
        TableRow(children: [
          SelectableText(
            'Noun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Gender',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Singular Article',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Plural Article',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ]),
        TableRow(children: [
          SelectableText('Chat (cat)', style: TextStyle(fontSize: 16)),
          SelectableText('Masculine', style: TextStyle(fontSize: 16)),
          SelectableText('Le', style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('Table (table)', style: TextStyle(fontSize: 16)),
          SelectableText('Gender', style: TextStyle(fontSize: 16)),
          SelectableText('La', style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('Livre (book)', style: TextStyle(fontSize: 16)),
          SelectableText('Masculine', style: TextStyle(fontSize: 16)),
          SelectableText('Le', style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('Pomme (apple)', style: TextStyle(fontSize: 16)),
          SelectableText('Feminine', style: TextStyle(fontSize: 16)),
          SelectableText('La', style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('Fleur (flower)', style: TextStyle(fontSize: 16)),
          SelectableText('Feminine', style: TextStyle(fontSize: 16)),
          SelectableText('La', style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('Chien (dog)', style: TextStyle(fontSize: 16)),
          SelectableText('Masculine', style: TextStyle(fontSize: 16)),
          SelectableText('Le', style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('L\'oiseau (The bird)',
              style: TextStyle(fontSize: 16)),
          SelectableText('Masculine', style: TextStyle(fontSize: 16)),
          SelectableText("L' ", style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('La voiture (The car)',
              style: TextStyle(fontSize: 16)),
          SelectableText('Feminine', style: TextStyle(fontSize: 16)),
          SelectableText("La ", style: TextStyle(fontSize: 16)),
          SelectableText('Les', style: TextStyle(fontSize: 16))
        ])
      ],
    );
  }
}

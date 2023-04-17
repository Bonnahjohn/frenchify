// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Preposition extends StatelessWidget {
  const Preposition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Preposition'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                prepIntro,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Prepo(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                prepFooter,
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

class Prepo extends StatelessWidget {
  const Prepo({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
        TableRow(children: [
          SelectableText(
            'Preposition',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Example',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(' à (at, to, in)', style: TextStyle(fontSize: 16)),
          SelectableText('Je vais à l\'école. \n(I am going to school.)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('avec (With)', style: TextStyle(fontSize: 16)),
          SelectableText("J'ai mangé avec mes amis. \n(I ate with my friends.)",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('chez \n(at the house of, at the office of)',
              style: TextStyle(fontSize: 16)),
          SelectableText(
              "Je vais chez le docteur. \n(I am going to the doctor's office.)",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' dans (in, inside)', style: TextStyle(fontSize: 16)),
          SelectableText(
              "Le chat est dans la maison.\n (The cat is inside the house.)",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' de (of, from)', style: TextStyle(fontSize: 16)),
          SelectableText(
              " La robe de ma mère est bleue. \n(My mother's dress is blue.)",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' pour (for, in order to)',
              style: TextStyle(fontSize: 16)),
          SelectableText(
              " J'ai acheté des fleurs pour ma mère. \n(I bought flowers for my mother.)",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('sans (without)', style: TextStyle(fontSize: 16)),
          SelectableText(" Je mange sans viande. \n(I am eating without meat.)",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('sur(On,Onto)', style: TextStyle(fontSize: 16)),
          SelectableText(
              'Le livre est sur la table. \n(The book is on the table.)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('vers (Towards)', style: TextStyle(fontSize: 16)),
          SelectableText(
              'Je marche vers la gare. \n(I am walking towards the train station.)',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('devant (in front of)',
              style: TextStyle(fontSize: 16)),
          SelectableText(
              'Le ballon est devant la table. \n(The ball is infront of the table.)',
              style: TextStyle(fontSize: 16))
        ])
      ],
    );
  }
}

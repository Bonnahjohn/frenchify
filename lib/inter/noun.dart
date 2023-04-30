// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Noun extends StatelessWidget {
  const Noun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Nouns and article'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                nounIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Noted(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                nounFooter,
                style: Theme.of(context).textTheme.bodyMedium,
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

class Noted extends StatelessWidget {
  const Noted({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
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
          SelectableText(
            'Chat (cat)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Table (table)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Gender',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Livre (book)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Pomme (apple)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Feminine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Fleur (flower)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Feminine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Chien (dog)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'L\'oiseau (The bird)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "L' ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'La voiture (The car)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Feminine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "La ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ])
      ],
    );
  }
}

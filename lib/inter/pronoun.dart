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
                pronIntro,
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
                proFooter,
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
            'Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Example',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText('Je (I)', style: TextStyle(fontSize: 16)),
          SelectableText('Je suis fatigué\n (I am tired)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Tu (You) \n(singular informal)',
              style: TextStyle(fontSize: 16)),
          SelectableText('Tu es gentil \n(You are nice)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Il (He)', style: TextStyle(fontSize: 16)),
          SelectableText("Il est intelligent \n(He is intelligent)",
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Elle (She)', style: TextStyle(fontSize: 16)),
          SelectableText('Elle est belle\n (She is beautiful)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Nous (We)', style: TextStyle(fontSize: 16)),
          SelectableText('Nous sommes heureux\n (We are happy)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Vous (You) \n(singular formal or plural)',
              style: TextStyle(fontSize: 16)),
          SelectableText('Vous êtes polis\n (You are polite)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText(' Ils (They) \n(masculine or mixed gender group)',
              style: TextStyle(fontSize: 16)),
          SelectableText('Ils sont sportifs\n (They are athletic)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Elles (They) (feminine group)',
              style: TextStyle(fontSize: 16)),
          SelectableText("Elles sont amusantes\n (They are fun)",
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText(' Le (Him or it -masculine)',
              style: TextStyle(fontSize: 16)),
          SelectableText("Je le vois (I see him/it) ",
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('La (Her or it feminine)',
              style: TextStyle(fontSize: 16)),
          SelectableText('Je la vois (I see her/it)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Les (Them)', style: TextStyle(fontSize: 16)),
          SelectableText('Je les vois (I see them)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Lui (Him or to him)', style: TextStyle(fontSize: 16)),
          SelectableText('Je lui parle\n(I talk to him)',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('Leur(Them or to them)',
              style: TextStyle(fontSize: 16)),
          SelectableText("Je leur parle (I talk to them) ",
              style: TextStyle(fontSize: 16)),
        ])
      ],
    );
  }
}

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Verb extends StatelessWidget {
  const Verb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Verb'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                verbIntro,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Verbo(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                verbFooter,
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

class Verbo extends StatelessWidget {
  const Verbo({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
        TableRow(children: [
          SelectableText(
            'Verb',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Present Tense Conjugation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText('être (to be)', style: TextStyle(fontSize: 16)),
          SelectableText('suis, es, est, sommes, êtes, sont',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('avoir (to have)', style: TextStyle(fontSize: 16)),
          SelectableText('ai, as, a, avons, avez, ont',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('aller(go)', style: TextStyle(fontSize: 16)),
          SelectableText('vais, vas, va, allons, allez, vont',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('faire (to do/make)', style: TextStyle(fontSize: 16)),
          SelectableText('fais, fais, fait, faisons, faites, font',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('dire (to say)', style: TextStyle(fontSize: 16)),
          SelectableText('dis, dis, dit, disons, dites, disent',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('pouvoir (can/to be able to)',
              style: TextStyle(fontSize: 16)),
          SelectableText('peux, peux, peut, pouvons, pouvez, peuvent',
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vouloir (to want)', style: TextStyle(fontSize: 16)),
          SelectableText("veux, veux, veut, voulons, voulez, veulent",
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('devoir (to have to/must)',
              style: TextStyle(fontSize: 16)),
          SelectableText('dois, dois, doit, devons, devez, doivent',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('savoir (to know (facts))',
              style: TextStyle(fontSize: 16)),
          SelectableText('sais, sais, sait, savons, savez, savent',
              style: TextStyle(fontSize: 16)),
        ]),
        TableRow(children: [
          SelectableText('venir(to come)', style: TextStyle(fontSize: 16)),
          SelectableText('viens, viens, vient, venons, venez, viennent',
              style: TextStyle(fontSize: 16)),
        ])
      ],
    );
  }
}

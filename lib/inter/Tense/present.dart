// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

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
        title: const Text('Present Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                tensesIntro,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Tense(),
              const SizedBox(
                height: 20,
              ),
              const SelectableText(
                  'For example, the verb "parler" (to speak) is an -er verb. To conjugate it in the present tense:'),
              const SizedBox(
                height: 20,
              ),
              const Parler(),
              const SelectableText(
                  '\n-ir verbs: To conjugate -ir verbs in the present tense, drop the -ir ending and add the following endings:\n'),
              const Irverbs(),
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

class Tense extends StatelessWidget {
  const Tense({super.key});

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
            'Ending',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText('je(I)', style: TextStyle(fontSize: 16)),
          SelectableText('-e', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu(You - infomal)', style: TextStyle(fontSize: 16)),
          SelectableText('-es', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on (He,She & It)',
              style: TextStyle(fontSize: 16)),
          SelectableText('-e', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous(We)', style: TextStyle(fontSize: 16)),
          SelectableText('-ons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous(You {singular formal or plural})',
              style: TextStyle(fontSize: 16)),
          SelectableText('-ez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elles(They)', style: TextStyle(fontSize: 16)),
          SelectableText('-ent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmm sub tenses of er verbs mmmmmmmmmmmmmmmmm

class Parler extends StatelessWidget {
  const Parler({super.key});

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
            'Conjugation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText('parle', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('parles', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on ', style: TextStyle(fontSize: 16)),
          SelectableText('parle', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('parlons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('parlez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elles', style: TextStyle(fontSize: 16)),
          SelectableText('parlent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Irverbs extends StatelessWidget {
  const Irverbs({super.key});

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
            'Ending',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous(We)', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

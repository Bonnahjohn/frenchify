// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Present extends StatelessWidget {
  const Present({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  'For example, the verb "parler" (to speak) is an -er verb. To conjugate it in the present tense:',
                  style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 20,
              ),
              const Parler(),
              const SelectableText(
                  '\n-ir verbs: To conjugate -ir verbs in the present tense, drop the -ir ending and add the following endings:\n',
                  style: TextStyle(fontSize: 16)),
              const Irverbs(),
              const SelectableText(
                  '\nFor example, the verb "finir" (to finish) is an -ir verb. To conjugate it in the present tense:\n',
                  style: TextStyle(fontSize: 16)),
              const Example(),
              const SelectableText(
                  '\n-re verbs: To conjugate -re verbs in the present tense, drop the -re ending and add the following endings:\n',
                  style: TextStyle(fontSize: 16)),
              const Reverbs(),
              const SelectableText(
                  '\nFor example, the verb "prendre" (to take) is an -re verb. To conjugate it in the present tense:\n',
                  style: TextStyle(fontSize: 16)),
              const Reexample(),
              const SelectableText(
                  '\nHere are the conjugation patterns for some of the most popular French irregular verbs in the present tense:\n',
                  style: TextStyle(fontSize: 16)),
              const Tobe(),
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
          SelectableText('-is', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('-is', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('-it', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('-issons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('-issez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('-issent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

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
          SelectableText('finis', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('finis', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('finit', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('finissons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('finissez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('finissent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Reverbs extends StatelessWidget {
  const Reverbs({super.key});

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
          SelectableText('-s', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('-s', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('-', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('-ons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('-ez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('-ent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Reexample extends StatelessWidget {
  const Reexample({super.key});

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
          SelectableText('prends', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('prends', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('prend', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('prenons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('prenez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('prennent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Tobe extends StatelessWidget {
  const Tobe({super.key});

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
          SelectableText('suis', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('es', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('est', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('Sommes', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('êtes', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('Sont', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

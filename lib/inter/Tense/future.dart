// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Future extends StatelessWidget {
  const Future({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Future Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                futureIntro,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Example(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                irregular,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Irregular(),
              SelectableText(
                conditional,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const Condition(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                futureFooter,
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

//mmmmmmmmmmmmmmmmmmmmmmm regular table content mmmmmmmmmmmmmmmmmmmmm
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
          SelectableText(
            'Endings',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(' je', style: TextStyle(fontSize: 16)),
          SelectableText(" parlerai", style: TextStyle(fontSize: 16)),
          SelectableText(' -ai', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' tu', style: TextStyle(fontSize: 16)),
          SelectableText(' parleras', style: TextStyle(fontSize: 16)),
          SelectableText('-as', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText(' parlera', style: TextStyle(fontSize: 16)),
          SelectableText(' -a', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' nous', style: TextStyle(fontSize: 16)),
          SelectableText(' parlerons', style: TextStyle(fontSize: 16)),
          SelectableText(' -ons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' vous', style: TextStyle(fontSize: 16)),
          SelectableText(' parlerez', style: TextStyle(fontSize: 16)),
          SelectableText(' -ez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' ils/elles', style: TextStyle(fontSize: 16)),
          SelectableText('	parleront', style: TextStyle(fontSize: 16)),
          SelectableText(' -ont', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmmm irregular verbs for future tenses mmmmmmmmmmmm

class Irregular extends StatelessWidget {
  const Irregular({super.key});

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
            'Future Tense Conjugation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(' aller (to go)', style: TextStyle(fontSize: 16)),
          SelectableText(
              " j'irai, tu iras, il/elle/on ira, nous irons, vous irez, ils/elles iront",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' avoir (to have)', style: TextStyle(fontSize: 16)),
          SelectableText(
              " j'aurai, tu auras, il/elle/on aura, nous aurons, vous aurez, ils/elles auront",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('être (to be)', style: TextStyle(fontSize: 16)),
          SelectableText(
              " je serai, tu seras, il/elle/on sera, nous serons, vous serez, ils/elles seront",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' faire (to do/make)', style: TextStyle(fontSize: 16)),
          SelectableText(
              " je ferai, tu feras, il/elle/on fera, nous ferons, vous ferez, ils/elles feront",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('pouvoir (to be able to)',
              style: TextStyle(fontSize: 16)),
          SelectableText(
              " je pourrai, tu pourras, il/elle/on pourra, nous pourrons, vous pourrez, ils/elles pourront",
              style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('venir (to come)', style: TextStyle(fontSize: 16)),
          SelectableText(
              " je viendrai, tu viendras, il/elle/on viendra, nous viendrons, vous viendrez, ils/elles viendront",
              style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

// mmmmmmmmmmmmmmmmmm conditional tenses mmmmmmmmmmmmmmmmmmmmmm
class Condition extends StatelessWidget {
  const Condition({super.key});

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
          SelectableText(' je', style: TextStyle(fontSize: 16)),
          SelectableText(' parlerais', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' tu', style: TextStyle(fontSize: 16)),
          SelectableText(' parlerais', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText(' parlerait', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' nous', style: TextStyle(fontSize: 16)),
          SelectableText(' parlerions', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' vous', style: TextStyle(fontSize: 16)),
          SelectableText(' parleriez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText(' ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText(' parleraient', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

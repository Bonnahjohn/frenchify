// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';

class Past extends StatelessWidget {
  const Past({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Past Tense'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                pastIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Example(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                imparfait,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Impperfect(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                simple,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Simple(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                pastFooter,
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

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Subject Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Avoir Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Être Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "j'ai mangé",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'je suis allé(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'tu as mangé',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'tu es allé(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'il/elle/on',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'il/elle a mangé',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'il/elle est allé(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'nous avons mangé',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'nous sommes allé(e)s',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vous avez mangé',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vous êtes allé(e)(s)',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'ils/elles',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	ils/elles ont mangé',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ils/elles sont allé(e)s',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

class Impperfect extends StatelessWidget {
  const Impperfect({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Subject Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            '-er Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            '-ir Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            '-re Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "parlais",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finissais',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendais',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlais',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finissais',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendais',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'il/elle/on',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlait',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finissait',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendait',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlions',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finissions',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendions',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText(
            'vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parliez',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finissiez',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "vendiez",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'ils/elles',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	parlaient',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finissaient',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendaient',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

class Simple extends StatelessWidget {
  const Simple({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Subject Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            '-er Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            '-ir Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            '-re Verbs',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ]),
        TableRow(children: [
          SelectableText(
            'je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "parlai",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finis',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendis',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlas',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finis',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendis',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'il/elle/on',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parla',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finit',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendit',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlâmes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finîmes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendîmes',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlâtes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finîtes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendîtes',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'ils/elles',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	parlèrent',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'finirent',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'vendirent ',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

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
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Past Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                pastIntro,
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
                imparfait,
                style: const TextStyle(fontSize: 16),
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
                style: const TextStyle(fontSize: 16),
              ),
              const Simple(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                pastFooter,
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
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText("j'ai mangé", style: TextStyle(fontSize: 16)),
          SelectableText('je suis allé(e)', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('tu as mangé', style: TextStyle(fontSize: 16)),
          SelectableText('tu es allé(e)', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('il/elle a mangé', style: TextStyle(fontSize: 16)),
          SelectableText('il/elle est allé(e)', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('nous avons mangé', style: TextStyle(fontSize: 16)),
          SelectableText('nous sommes allé(e)s', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('vous avez mangé', style: TextStyle(fontSize: 16)),
          SelectableText('vous êtes allé(e)(s)', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elles', style: TextStyle(fontSize: 16)),
          SelectableText('	ils/elles ont mangé',
              style: TextStyle(fontSize: 16)),
          SelectableText('ils/elles sont allé(e)s',
              style: TextStyle(fontSize: 16))
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
      children: const [
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
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText("parlais", style: TextStyle(fontSize: 16)),
          SelectableText('finissais', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendais',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('parlais', style: TextStyle(fontSize: 16)),
          SelectableText('finissais', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendais',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('parlait', style: TextStyle(fontSize: 16)),
          SelectableText('finissait', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendait',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('parlions', style: TextStyle(fontSize: 16)),
          SelectableText('finissions', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendions',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('parliez', style: TextStyle(fontSize: 16)),
          SelectableText('finissiez', style: TextStyle(fontSize: 16)),
          SelectableText(
            "vendiez",
            style: TextStyle(fontSize: 17),
          )
        ]),
        TableRow(children: [
          SelectableText('ils/elles', style: TextStyle(fontSize: 16)),
          SelectableText('	parlaient', style: TextStyle(fontSize: 16)),
          SelectableText('finissaient', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendaient',
            style: TextStyle(fontSize: 17),
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
      children: const [
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
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText("parlai", style: TextStyle(fontSize: 16)),
          SelectableText('finis', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendis',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('parlas', style: TextStyle(fontSize: 16)),
          SelectableText('finis', style: TextStyle(fontSize: 16)),
          SelectableText(
            'vendis',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('parla', style: TextStyle(fontSize: 16)),
          SelectableText(
            'finit',
            style: TextStyle(
              fontSize: 17,
            ),
          ),
          SelectableText('vendit', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('parlâmes', style: TextStyle(fontSize: 16)),
          SelectableText('finîmes', style: TextStyle(fontSize: 16)),
          SelectableText(
            '',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16)),
          SelectableText(
            '',
            style: TextStyle(
              fontSize: 17,
            ),
          )
        ]),
        TableRow(children: [
          SelectableText('ils/elles', style: TextStyle(fontSize: 16)),
          SelectableText('	', style: TextStyle(fontSize: 16)),
          SelectableText('', style: TextStyle(fontSize: 16)),
          SelectableText(
            '',
            style: TextStyle(fontSize: 17),
          )
        ]),
      ],
    );
  }
}

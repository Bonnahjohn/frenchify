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
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
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
                tensesIntro,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              const SelectableText(
                  'For example, the verb "parler" (to speak) is an -er verb. To conjugate it in the present tense:'),
              const SizedBox(
                height: 20,
              ),
              const SelectableText(
                  '\n-ir verbs: To conjugate -ir verbs in the present tense, drop the -ir ending and add the following endings:\n'),
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

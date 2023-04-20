// ignore_for_file: unused_import, empty_statements, depend_on_referenced_packages, unnecessary_import

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/Pages/home.dart';
import 'package:flutter/services.dart';
import 'package:translator/translator.dart';

class Translator extends StatelessWidget {
  const Translator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Translator'),
        // ignore: prefer_const_constructors
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [Treans()],
          ),
        ),
      )),
    );
  }
}

class Treans extends StatefulWidget {
  const Treans({super.key});

  @override
  State<Treans> createState() => _TreansState();
}

class _TreansState extends State<Treans> {
  final translator = GoogleTranslator();
  final TextEditingController _textController = TextEditingController();
  String _translatedText = '';
  bool _isEnglishToFrench = true;

  void _translateText() {
    String text = _textController.text;
    translator
        .translate(text, to: _isEnglishToFrench ? 'fr' : 'en')
        .then((value) {
      setState(() {
        _translatedText = value.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _textController,
          decoration: const InputDecoration(
            hintText: 'Enter text to translate',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton.icon(
          onPressed: _translateText,
          icon: const Icon(Icons.translate),
          label: const Text('Translate'),
        ),
        const SizedBox(height: 20),
        const Text(
          'Translated Text:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        SelectableText(
          _translatedText,
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _isEnglishToFrench = !_isEnglishToFrench;
            });
          },
          child: Text(_isEnglishToFrench
              ? 'Translate to French'
              : 'Translate to English'),
        ),
      ],
    );
  }
}

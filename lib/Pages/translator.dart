// ignore_for_file: unused_import, empty_statements, depend_on_referenced_packages, unnecessary_import

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

import 'package:flutter/services.dart';
import 'package:translator/translator.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

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
      bottomNavigationBar: ADDS(),
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
          style: Theme.of(context).textTheme.bodyMedium,
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
        SizedBox(
          height: 80,
        ),
        Text(
          'Please connect to the internet everytime you want to use the translator otherwise it will not work for you.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ADDS extends StatefulWidget {
  const ADDS({super.key});

  @override
  State<ADDS> createState() => _ADDSState();
}

class _ADDSState extends State<ADDS> {
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }

  _initBannerAd() {
    _bannerAd = BannerAd(
        size: AdSize.banner,
        adUnitId: 'ca-app-pub-2551767266399179/9882829802',
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            setState(() {
              _isAdLoaded = true;
            });
          },
          onAdFailedToLoad: (ad, error) {},
        ),
        request: AdRequest());
    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: _isAdLoaded
          ? Container(
              height: _bannerAd.size.height.toDouble(),
              width: _bannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bannerAd),
            )
          : SizedBox(
              height: 50,
            ),
    );
  }
}

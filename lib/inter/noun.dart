// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Noun extends StatelessWidget {
  const Noun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Nouns and article'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                nounIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Noted(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                nounFooter,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: ADDS(),
    );
  }
}

class Noted extends StatelessWidget {
  const Noted({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Noun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Gender',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Singular Article',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Plural Article',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Chat (cat)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Table (table)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Gender',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Livre (book)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Pomme (apple)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Feminine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Fleur (flower)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Feminine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'La',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Chien (dog)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Le',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'L\'oiseau (The bird)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Masculine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "L' ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'La voiture (The car)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Feminine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "La ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Les',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ])
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
        adUnitId: 'ca-app-pub-9379469464236253/6780189202',
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

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Pronoun extends StatelessWidget {
  const Pronoun({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Pronoun'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                pronIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Pron(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                proFooter,
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

class Pron extends StatelessWidget {
  const Pron({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Example',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Je (I)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Je suis fatigué\n (I am tired)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Tu (You) \n(singular informal)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Tu es gentil \n(You are nice)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Il (He)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "Il est intelligent \n(He is intelligent)",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Elle (She)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Elle est belle\n (She is beautiful)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Nous (We)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Nous sommes heureux\n (We are happy)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Vous (You) \n(singular formal or plural)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Vous êtes polis\n (You are polite)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Ils (They) \n(masculine or mixed gender group)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Ils sont sportifs\n (They are athletic)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Elles (They) (feminine group)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "Elles sont amusantes\n (They are fun)",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Le (Him or it -masculine)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "Je le vois (I see him/it) ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'La (Her or it feminine)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Je la vois (I see her/it)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Les (Them)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Je les vois (I see them)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Lui (Him or to him)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Je lui parle\n(I talk to him)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Leur(Them or to them)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "Je leur parle (I talk to them) ",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
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

// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/inter/configuration.dart';

import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Adjective extends StatelessWidget {
  const Adjective({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Adjective'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                addIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              Tables(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                addFooter,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
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

//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm

class Tables extends StatelessWidget {
  const Tables({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Adjective',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Masculine form',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Feminine form',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Beau/belle	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Beau',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Belle	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Grand/grande',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grand',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grande',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Petit/petite',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	Petit',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	Petite',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Vieux/vieille',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Vieux	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Vieille',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Grand/grande',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grand',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grande',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Bon/bonne',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Bon	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Bonne',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Mauvais/mauvaise',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mauvais',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mauvaise',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Gros/grosse',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Gros	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grosse',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Fort/forte',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Fort',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Forte',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Nouveau',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Nouveau',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Nouvelle',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

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

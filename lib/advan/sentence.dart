// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'config.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Sentence extends StatelessWidget {
  const Sentence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Sentence Structure'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                structIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              Structure(),
              SizedBox(
                height: 30,
              ),
              SelectableText(
                structFooter,
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

class Structure extends StatelessWidget {
  const Structure({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Structure',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Example',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'SVO',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '"Le chat mange une souris." (The cat eats a mouse.)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'SVI	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "\"Il pleut.\" (It's raining.)",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'SVC	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "\"Elle est fatiguée.\" (She is tired.)",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' SVOO	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "\"Le chat donne une souris à l'oiseau.\" (The cat gives a mouse to the bird.)",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'SVOC	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            "\"Je trouve le livre intéressant.\" (I find the book interesting.)",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' SVOA	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " \"Le chat mange une souris dans le jardin.\" (The cat eats a mouse in the garden.)",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
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

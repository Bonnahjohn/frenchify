// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Salutation extends StatelessWidget {
  const Salutation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Greetings and Introduction'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                introText,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SelectableText(
                para,
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
                note,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              SelectableText(
                'French Introduction',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                intro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              //introduction class mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 30,
              ),
              Introduction(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                footerIntro,
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
            'Greetings',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Pronunciation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Meaning',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          Text(
            'Bonjour',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'bohn-zhoor',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Good day / Hello',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Bonsoir',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'bohn-swahr',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Good evening',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Salut',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'sah-lyoo',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Hi / Hey',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Coucou',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'coo-coo',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Hi / Hello',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Comment ça va ?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'koh-mohn sah vah',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'How are you?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Ça va ?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'sah vah',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Are you OK?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Bienvenue',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'byah-ven-yoo',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'French',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Pronunciation (Approximate)',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'English Translation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ]),
        TableRow(children: [
          SelectableText(
            'Bonjour',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'bohn-zhoor',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Good day / Hello',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Comment ça va?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'koh-mahn sah vah',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'How are you?',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "Je m'appelle [your name]",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'zhuh mah-pehl [your name]',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'My name is [your name]',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Enchanté(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ahn-shahn-tay',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Nice to meet you',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Au revoir',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'oh ruh-vwahr',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Goodbye',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
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

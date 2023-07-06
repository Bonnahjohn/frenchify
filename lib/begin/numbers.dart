// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Numbers and counting'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                myIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              SelectableText(
                'First, let\'s start with the numbers from 1 to 10:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Nums(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                next,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 10,
              ),
              SelectableText(
                'Here are some examples of how to count in French:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 10,
              ),
              Next(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                subIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 25,
              ),
              SelectableText(
                finalNote,
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

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Nums extends StatelessWidget {
  const Nums({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Number',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'French',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Pronunciation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          )
        ]),
        TableRow(children: [
          SelectableText(
            '1',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'un',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ahn',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '2',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' deux',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'duh',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "3",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'trois',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'twah',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '4',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'quatre',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'katr',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '5',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'cinq',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'sank',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '6',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'six',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'sees',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '7',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'sept',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' seht',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '8',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' huit',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'wheet',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '9',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'neuf',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'nuhf',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '10',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'dix ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'dees',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(TextSpan(children: const [
      TextSpan(text: '', style: TextStyle(color: Colors.black, fontSize: 18)),
      TextSpan(
          text: '\n1.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "15: quinze (kanz)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16)),
      TextSpan(
          text: '\n2.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "20: vingt (van)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n3.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: '25: vingt-cinq (van-sank)',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16)),
      TextSpan(
          text: '\n4.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "30: trente (tront)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n5.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "40: quarante (kah-rahnt)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n6.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "50: cinquante (sank-ont)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n7.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "60: soixante (swa-sont)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n8.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "70: soixante-dix (swa-sont-dees)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n9.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "80: quatre-vingts (katr-van)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n10.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "90: quatre-vingt-dix (katr-van-dees)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n11.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "100: cent (sahn)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
    ]));
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
        adUnitId: 'ca-app-pub-7469711478511103/8161637724',
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

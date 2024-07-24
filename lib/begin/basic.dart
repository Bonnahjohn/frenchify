// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/quiz/basic_quiz.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Basic extends StatelessWidget {
  const Basic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Basic phrase'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                basicPhrase,
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
                basicFooter,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => BasicsScreen());
                  },
                  child: Text(
                    'Examine yourself with the quiz game',
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  )),
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
            'French Phrase',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'Pronunciation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            'English Translation',
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
            'Au revoir',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'oh ruh-vwah',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Goodbye',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Merci',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'mehr-see',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Thank you',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            "S'il vous plaît",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'seel voo pleh',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Please',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Oui',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'wee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Yes',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Non',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'nohn',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'No',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Comment ça va?',
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
            'Ça va bien',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'sah vah byeh',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'I\'m doing well',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          Text(
            'Je m\'appelle',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'zhuh mah-pell',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'My name is',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Excusez-moi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'eks-koo-zay mwah',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Excuse me',
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

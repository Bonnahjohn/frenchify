// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/quiz/color_quiz.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Colour extends StatelessWidget {
  const Colour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Colors and describing things'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                colorIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              SizedBox(
                height: 30,
              ),
              Figure(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                adjectiveIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),

              //introduction class mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 30,
              ),
              Describe(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                myFooter,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => Colourcreen());
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

class Figure extends StatelessWidget {
  const Figure({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Color',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'French Translation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Red',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Rouge',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Orange',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Orange',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "  Yellow",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Jaune',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            '  Green',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Vert',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Blue',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Bleu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Purple',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Violet',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Pink',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Rose',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Black',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Noir',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' White',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Blanc',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Brown',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Marron',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' Grey',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Gris',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Describe extends StatelessWidget {
  const Describe({super.key});

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
          SelectableText(
            'English Translation',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Grand(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Big',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Joli(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Pretty',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "Beau/Belle",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Beautiful',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Mignon(ne)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Cute',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Drôle',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Funny',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Intéressant(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Interesting',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Bon(ne)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Good',
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

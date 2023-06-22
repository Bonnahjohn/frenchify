// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Family and relationship'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                famIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              SelectableText(
                '\nHere is a table that shows the French terms for family members and their relationships:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Fam(),

              SizedBox(
                height: 10,
              ),
              SelectableText(
                'Overall, French families are close-knit and highly valued, and their language reflects this with specific terms for different family members.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 10,
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

class Fam extends StatelessWidget {
  const Fam({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Family Member',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('French Term',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText(
            'Mother',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Maman',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'mah-MAHN',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Father',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Papa',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'pah-PAH',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "Grandmother",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grand-mère',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'grahn-MEHR',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Grandfather',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Grand-père',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'grahn-PAIR',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Brother',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Frère',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'FREHR',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Sister',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Soeur',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'SUR',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Son',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Fils',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'feess ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Daughter',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Fille',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'fee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Uncle	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Oncle',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ohng-kleuh',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Aunt	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Tante',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'tahnt',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Cousin',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Cousin(e) ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'koo-zahn',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Husband	',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mari',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'mah-ree',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Wife',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Femme ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'fem',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm

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
        adUnitId: 'ca-app-pub-7469711478511103/3568950315',
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

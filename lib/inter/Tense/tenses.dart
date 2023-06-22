// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/Tense/past.dart';
import 'package:frenchify/inter/Tense/present.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/inter/Tense/future.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Tenses extends StatelessWidget {
  const Tenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Image.asset('assets/images/now.png'),
                  title: Text('Present tense'),
                  subtitle: Text('le présent'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Present()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/images/past.png'),
                  title: Text('Past tense'),
                  subtitle: Text('Passé Composé'),
                  trailing: Icon(Icons.arrow_left),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Past()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/images/future.png'),
                  title: Text('Future tense'),
                  subtitle: Text('le futur'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Future()));
                  },
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: ADDS(),
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

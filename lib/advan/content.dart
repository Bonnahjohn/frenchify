// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/advan/content.dart';
import 'package:frenchify/advan/Letter/informal.dart';
import 'package:frenchify/advan/Letter/formal.dart';
import 'package:frenchify/advan/Letter/letterimage.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Letter extends StatelessWidget {
  const Letter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text(' Letter Writing'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Image.asset('assets/images/informal.png'),
                  title: Text('Informal letter'),
                  subtitle: Text('Lettre informelle'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Informal()));
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Image.asset('assets/images/master.png'),
                  title: Text('Formal Letter'),
                  subtitle: Text('Lettre formelle'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Formal()));
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              )
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
        adUnitId: 'ca-app-pub-2551767266399179/9882829802',
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

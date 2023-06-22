// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Images extends StatelessWidget {
  const Images({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Formal letter images'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Here is an a sample images showing how to write formal letter.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 30,
              ),
              InteractiveViewer(
                  boundaryMargin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  panEnabled: true,
                  scaleEnabled: true,
                  maxScale: 3,
                  minScale: 0.5,
                  child: Image.asset(
                    'assets/images/F1.png',
                  )),
              SizedBox(
                height: 40,
              ),
              InteractiveViewer(
                  boundaryMargin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  panEnabled: true,
                  scaleEnabled: true,
                  maxScale: 3,
                  minScale: 0.5,
                  child: Image.asset(
                    'assets/images/F2.png',
                  )),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(100, 149, 237, 1),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
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

// ignore_for_file: unused_import, prefer_const_constructors, file_names, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, dead_code, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:frenchify/advan/Letter/letterimage.dart';
import 'package:frenchify/main.dart';
import 'config.dart';
import 'package:frenchify/advan/Letter/informal.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Formal extends StatelessWidget {
  const Formal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Formal  Letter'),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: note.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              // Display the introduction text at index 0
              return SelectableText(
                myText,
                style: Theme.of(context).textTheme.bodyMedium,
              );
            } else if (index == note.length + 1) {
              // Display the note at the bottom
              return SelectableText(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Images()));
                },
                focus,
                style: Theme.of(context).textTheme.bodyMedium,
              );
            } else {
              // Display each sentence as a ListTile with a number
              return ListTile(
                horizontalTitleGap: 1,
                leading: Text(
                  '${index}.',
                  style: TextStyle(color: Colors.green[400]),
                ),
                title: SelectableText(
                  note[index - 1],
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            }
          },
        ),
      ),
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

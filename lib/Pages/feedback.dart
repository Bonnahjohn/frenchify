// ignore_for_file: unused_import, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Feedback'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "'Bonjour to all Frenchify users! We are thrilled to have you learning French with our app. We hope that you are finding the exercises helpful and that you're making progress in your language journey. We value your feedback, so please don't hesitate to share any suggestions or issues you encounter with us. Our team is constantly working to improve the app and provide you with the best learning experience possible. Merci beaucoup for choosing Frenchify!'",
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.clip,
                strutStyle: StrutStyle(
                    leadingDistribution: TextLeadingDistribution.proportional),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text:
                        'Send any suggestion or issues you encouter through this email address:',
                    style: Theme.of(context).textTheme.bodyMedium),
                TextSpan(
                    text: 'Frenchifyteam@gmail.com',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(100, 149, 237, 1)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        final Uri params = Uri(
                          scheme: 'mailto',
                          path: 'Frenchifyteam@gmail.com',
                        );
                        String url = params.toString();
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }),
              ]))
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

// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Future extends StatelessWidget {
  const Future({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Future Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                futureIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Example(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                irregular,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Irregular(),
              SelectableText(
                conditional,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Condition(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                futureFooter,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
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

//mmmmmmmmmmmmmmmmmmmmmmm regular table content mmmmmmmmmmmmmmmmmmmmm
class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Conjugation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Endings',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " parlerai",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' -ai',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parleras',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-as',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' il/elle/on',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlera',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' -a',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlerons',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' -ons',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlerez',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' -ez',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' ils/elles',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	parleront',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' -ont',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmmm irregular verbs for future tenses mmmmmmmmmmmm

class Irregular extends StatelessWidget {
  const Irregular({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Verb',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Future Tense Conjugation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' aller (to go)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " j'irai, tu iras, il/elle/on ira, nous irons, vous irez, ils/elles iront",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' avoir (to have)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " j'aurai, tu auras, il/elle/on aura, nous aurons, vous aurez, ils/elles auront",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'être (to be)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " je serai, tu seras, il/elle/on sera, nous serons, vous serez, ils/elles seront",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' faire (to do/make)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " je ferai, tu feras, il/elle/on fera, nous ferons, vous ferez, ils/elles feront",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'pouvoir (to be able to)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " je pourrai, tu pourras, il/elle/on pourra, nous pourrons, vous pourrez, ils/elles pourront",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'venir (to come)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            " je viendrai, tu viendras, il/elle/on viendra, nous viendrons, vous viendrez, ils/elles viendront",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

// mmmmmmmmmmmmmmmmmm conditional tenses mmmmmmmmmmmmmmmmmmmmmm
class Condition extends StatelessWidget {
  const Condition({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: [
        TableRow(children: [
          SelectableText(
            'Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Conjugation',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            ' je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlerais',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlerais',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' il/elle/on',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlerait',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parlerions',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parleriez',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            ' ils/elle',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' parleraient',
            style: Theme.of(context).textTheme.bodyMedium,
          )
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

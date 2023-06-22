// ignore_for_file: unused_import, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/inter/configuration.dart';
import 'package:frenchify/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Present extends StatelessWidget {
  const Present({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Present Tenses'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                tensesIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Tense(),
              const SizedBox(
                height: 20,
              ),
              SelectableText(
                'For example, the verb "parler" (to speak) is an -er verb. To conjugate it in the present tense:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              const Parler(),
              SelectableText(
                '\n-ir verbs: To conjugate -ir verbs in the present tense, drop the -ir ending and add the following endings:\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Irverbs(),
              SelectableText(
                '\nFor example, the verb "finir" (to finish) is an -ir verb. To conjugate it in the present tense:\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Example(),
              SelectableText(
                '\n-re verbs: To conjugate -re verbs in the present tense, drop the -re ending and add the following endings:\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Reverbs(),
              SelectableText(
                '\nFor example, the verb "prendre" (to take) is an -re verb. To conjugate it in the present tense:\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Reexample(),
              SelectableText(
                '\nHere are the conjugation patterns for some of the most popular French irregular verbs in the present tense:\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const Tobe(),
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

class Tense extends StatelessWidget {
  const Tense({super.key});

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
            'Ending',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'je(I)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-e',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'tu(You - infomal)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-es',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText('il/elle/on (He,She & It)',
              style: TextStyle(fontSize: 16)),
          SelectableText(
            '-e',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'nous(We)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-ons',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'vous(You {singular formal or plural})',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-ez',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'ils/elles(They)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-ent',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

//mmmmmmmmmmmmmmmmmmmmm sub tenses of er verbs mmmmmmmmmmmmmmmmm

class Parler extends StatelessWidget {
  const Parler({super.key});

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
            'je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parle',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parles',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'il/elle/on ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parle',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlons',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlez',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'ils/elles',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'parlent',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

class Irverbs extends StatelessWidget {
  const Irverbs({super.key});

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
            'Ending',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'je',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-is',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'tu',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-is',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'il/elle/on',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-it',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'nous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-issons',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'vous',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-issez',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
        TableRow(children: [
          SelectableText(
            'ils/elle',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '-issent',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      ],
    );
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
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
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText('finis', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('finis', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('finit', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('finissons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('finissez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('finissent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Reverbs extends StatelessWidget {
  const Reverbs({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
        TableRow(children: [
          SelectableText(
            'Pronoun',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
          SelectableText(
            'Ending',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ]),
        TableRow(children: [
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText('-s', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('-s', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('-', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('-ons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('-ez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('-ent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Reexample extends StatelessWidget {
  const Reexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
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
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText('prends', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('prends', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('prend', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('prenons', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('prenez', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('prennent', style: TextStyle(fontSize: 16))
        ]),
      ],
    );
  }
}

class Tobe extends StatelessWidget {
  const Tobe({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(
        color: const Color.fromRGBO(100, 149, 237, 1),
      ),
      children: const [
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
          SelectableText('je', style: TextStyle(fontSize: 16)),
          SelectableText('suis', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('tu', style: TextStyle(fontSize: 16)),
          SelectableText('es', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('il/elle/on', style: TextStyle(fontSize: 16)),
          SelectableText('est', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('nous', style: TextStyle(fontSize: 16)),
          SelectableText('Sommes', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('vous', style: TextStyle(fontSize: 16)),
          SelectableText('êtes', style: TextStyle(fontSize: 16))
        ]),
        TableRow(children: [
          SelectableText('ils/elle', style: TextStyle(fontSize: 16)),
          SelectableText('Sont', style: TextStyle(fontSize: 16))
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

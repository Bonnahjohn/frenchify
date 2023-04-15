// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Numbers and counting'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                myIntro,
                style: TextStyle(fontSize: 16),
              ),

              SelectableText(
                'First, let\'s start with the numbers from 1 to 10:',
                style: TextStyle(fontSize: 16),
              ),
              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Nums(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                next,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              SelectableText(
                'Here are some examples of how to count in French:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Next(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                subIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              SelectableText(
                finalNote,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Nums extends StatelessWidget {
  const Nums({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      textDirection: TextDirection.ltr,
      border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
      children: [
        TableRow(children: [
          SelectableText(
            'Number',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('French',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('1',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('un',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
          SelectableText('ahn',
              style: TextStyle(fontSize: 16), textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('2', textAlign: TextAlign.center),
          SelectableText(' deux', textAlign: TextAlign.center),
          SelectableText('duh', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText("3", textAlign: TextAlign.center),
          SelectableText('trois', textAlign: TextAlign.center),
          SelectableText('twah', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('4', textAlign: TextAlign.center),
          SelectableText('quatre', textAlign: TextAlign.center),
          SelectableText('katr', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('5', textAlign: TextAlign.center),
          SelectableText('cinq', textAlign: TextAlign.center),
          SelectableText('sank', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('6', textAlign: TextAlign.center),
          SelectableText('six', textAlign: TextAlign.center),
          SelectableText('sees', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('7', textAlign: TextAlign.center),
          SelectableText('sept', textAlign: TextAlign.center),
          SelectableText(' seht', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('8', textAlign: TextAlign.center),
          SelectableText(' huit', textAlign: TextAlign.center),
          SelectableText('wheet', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('9', textAlign: TextAlign.center),
          SelectableText('neuf', textAlign: TextAlign.center),
          SelectableText('nuhf', textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText('10', textAlign: TextAlign.center),
          SelectableText('dix ', textAlign: TextAlign.center),
          SelectableText('dees', textAlign: TextAlign.center),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectableText.rich(TextSpan(children: const [
      TextSpan(text: '', style: TextStyle(color: Colors.black, fontSize: 18)),
      TextSpan(
          text: '\n1.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "15: quinze (kanz)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16)),
      TextSpan(
          text: '\n2.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "20: vingt (van)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n3.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: '25: vingt-cinq (van-sank)',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16)),
      TextSpan(
          text: '\n4.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "30: trente (tront)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n5.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "40: quarante (kah-rahnt)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n6.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "50: cinquante (sank-ont)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n7.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "60: soixante (swa-sont)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n8.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "70: soixante-dix (swa-sont-dees)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n9.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "80: quatre-vingts (katr-van)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n10.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "90: quatre-vingt-dix (katr-van-dees)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
      TextSpan(
          text: '\n11.',
          style: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 17)),
      TextSpan(
          text: "100: cent (sahn)",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 17)),
    ]));
  }
}

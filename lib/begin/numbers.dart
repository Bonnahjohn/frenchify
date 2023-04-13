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
        title: Text('Days of the Week and Month of the year'),
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
                'First, let\'s start with the numbers from one to ten:',
                style: TextStyle(fontSize: 16),
              ),
              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              Nums(),
              SizedBox(
                height: 30,
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
                height: 20,
              ),
              Next(),
              SizedBox(
                height: 50,
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
    return InteractiveViewer(
        boundaryMargin: EdgeInsets.all(20.0),
        child: Table(
          border: TableBorder.all(color: Color.fromRGBO(100, 149, 237, 1)),
          children: [
            TableRow(children: [
              SelectableText(
                'English',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'French',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SelectableText(
                'Pronunciation',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ]),
            TableRow(children: [
              SelectableText(
                'January',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'Janvier',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'Zhahn-vee-yay',
                style: TextStyle(fontSize: 16),
              ),
            ]),
            TableRow(children: [
              SelectableText('February'),
              SelectableText('Février'),
              SelectableText('Fay-vree-yay'),
            ]),
            TableRow(children: [
              SelectableText("March"),
              SelectableText('Mars'),
              SelectableText('mahrs'),
            ]),
            TableRow(children: [
              SelectableText(
                'April',
              ),
              SelectableText('Avril'),
              SelectableText('Ah-vreel'),
            ]),
            TableRow(children: [
              SelectableText('May'),
              SelectableText('Mai'),
              SelectableText('Mai'),
            ]),
            TableRow(children: [
              SelectableText('June'),
              SelectableText('Juin'),
              SelectableText('Zhwa(n)'),
            ]),
            TableRow(children: [
              SelectableText('July'),
              SelectableText('Juillet'),
              SelectableText('Zhwee-yay'),
            ]),
            TableRow(children: [
              SelectableText('August'),
              SelectableText('Août'),
              SelectableText('Oot'),
            ]),
            TableRow(children: [
              SelectableText('September'),
              SelectableText('Septembre'),
              SelectableText('Set-tuhmb'),
            ]),
            TableRow(children: [
              SelectableText('October'),
              SelectableText('Octobre'),
              SelectableText('Ok-toh-br'),
            ]),
            TableRow(children: [
              SelectableText('November'),
              SelectableText('Novembre'),
              SelectableText('Noh-vahmb'),
            ]),
            TableRow(children: [
              SelectableText('December'),
              SelectableText('Décembre'),
              SelectableText('Day-sahmb'),
            ]),
          ],
        ));
  }
}

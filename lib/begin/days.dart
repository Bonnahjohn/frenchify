// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Days extends StatelessWidget {
  const Days({super.key});

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
                dayIntro,
                style: TextStyle(fontSize: 16),
              ),

              SizedBox(
                height: 30,
              ),
              Tables(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                monthIntro,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),

              //introduction class mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 30,
              ),
              Year(),
              SizedBox(
                height: 20,
              ),
              SelectableText(
                noteFooter,
                style: TextStyle(fontSize: 16),
              ),
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

//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm

class Tables extends StatelessWidget {
  const Tables({super.key});

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
                'French',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'Lundi',
                style: TextStyle(fontSize: 16),
              ),
              SelectableText(
                'Luhn-dee',
                style: TextStyle(fontSize: 16),
              ),
            ]),
            TableRow(children: [
              SelectableText('Tuesday'),
              SelectableText('	Mardi'),
              SelectableText('Mar-dee'),
            ]),
            TableRow(children: [
              SelectableText("Wednesday"),
              SelectableText('Mercredi'),
              SelectableText('Mehr-kruh-dee'),
            ]),
            TableRow(children: [
              SelectableText('Thursday'),
              SelectableText('Jeudi'),
              SelectableText('Juh-dee'),
            ]),
            TableRow(children: [
              SelectableText('Friday'),
              SelectableText('Vendredi'),
              SelectableText('Vahn-druh-dee'),
            ]),
            TableRow(children: [
              SelectableText('Saturday'),
              SelectableText('Samedi'),
              SelectableText('Sam-dee'),
            ]),
            TableRow(children: [
              SelectableText('Friday'),
              SelectableText('Dimanche'),
              SelectableText('Dee-mahnsh'),
            ]),
          ],
        ));
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Year extends StatelessWidget {
  const Year({super.key});

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

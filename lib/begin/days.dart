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
                style: Theme.of(context).textTheme.bodyMedium,
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
                style: Theme.of(context).textTheme.bodyMedium,
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
                style: Theme.of(context).textTheme.bodyMedium,
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

//  mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm content of the table mmmmmmmmmmmmmmmmmm

class Tables extends StatelessWidget {
  const Tables({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
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
            'Monday',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Lundi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Luhn-dee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Tuesday',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	Mardi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mar-dee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "Wednesday",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mercredi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mehr-kruh-dee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Thursday',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Jeudi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Juh-dee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Friday',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Vendredi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Vahn-druh-dee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Saturday',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Samedi',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Sam-dee',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Friday',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Dimanche',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Dee-mahnsh',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}

//intoduction table mmmmmmmmmmmmmmmmmmmmmmmmm

class Year extends StatelessWidget {
  const Year({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
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
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Janvier',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Zhahn-vee-yay',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'February',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Février',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Fay-vree-yay',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "March",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mars',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'mahrs',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'April',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Avril',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Ah-vreel',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'May',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mai',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Mai',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'June',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Juin',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Zhwa(n)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'July',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Juillet',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Zhwee-yay',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'August',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Août',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Oot',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'September',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Septembre',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Set-tuhmb',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'October',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Octobre',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Ok-toh-br',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'November',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Novembre',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Noh-vahmb',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'December',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Décembre',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Day-sahmb',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}

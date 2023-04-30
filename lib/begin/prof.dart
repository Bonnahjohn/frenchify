// ignore_for_file: unused_import, prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:frenchify/begin/configuration.dart';
import 'package:frenchify/main.dart';

class Prof extends StatelessWidget {
  const Prof({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Profession'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText(
                profIntro,
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              //lessonclass mmmmmmmmmmmmmmmmmmmmmm
              SizedBox(
                height: 10,
              ),
              Nums(),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 25,
              ),
              SelectableText(
                profFooter,
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
            'French',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SelectableText('Pronunciation',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          SelectableText('English',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center)
        ]),
        TableRow(children: [
          SelectableText('Médecin',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          SelectableText('meh-duh-SAN',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
          SelectableText('Doctor',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center),
        ]),
        TableRow(children: [
          SelectableText(
            'Avocat',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' ah-voh-KAH',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Lawyer',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            "Enseignant(e)",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'on-say-nyahn(t)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Teacher',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Ingénieur(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'an-jay-nieur',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Engineer',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Artiste',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ar-teest ',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Artist',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Journaliste',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            '	zhoor-nah-leest',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Journalist',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Vendeur(euse)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'von-duhr(uh)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Salesperson',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Chef de cuisine',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' shef duh kwee-zeen',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Chef',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Écrivain(e)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'ay-kree-van',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            'Writer',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
        TableRow(children: [
          SelectableText(
            'Policier(ère)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' poh-lee-see-ay(uhr)',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SelectableText(
            ' Police officer',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ]),
      ],
    );
  }
}
//next number of the content mmmmmmmmmmmmmm

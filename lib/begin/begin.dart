// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class Beginner extends StatelessWidget {
  const Beginner({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Greetings and Introduction'),
                subtitle: Text('Salutation et Introduction'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Salutation');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.numbers),
                title: Text('Basic phrases'),
                subtitle: Text('phrase de base'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.color_lens),
                title: const Text('Days of the Week and Month of the year'),
                subtitle: const Text(
                    "Les jours de la semaine et Les mois de l'annee"),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Days');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/num.jpg',
                    width: 100, height: 500),
                title: Text('Numbers and counting'),
                subtitle: Text('Nombres et comptage'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Numbers');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/num.jpg',
                    width: 100, height: 500),
                title: Text('Colors and describing things'),
                subtitle: Text('couleurs et description des choses'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Family and relationships'),
                subtitle: Text('Famille et relations '),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Time and dates'),
                subtitle: Text('Heure et dates'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Profession'),
                subtitle: Text('Les professions'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Public holidays and special days(Festivals)'),
                subtitle: Text('Jours fériés et jours spéciaux Festivals'),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.south_east_outlined),
                title: Text('Weather and seasons'),
                subtitle: Text('Météo et saison'),
                onTap: () {
                  Navigator.pushNamed(context, '/Basic');
                },
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    ));
  }
}

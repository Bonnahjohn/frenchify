import 'package:flutter/material.dart';

class Beginner extends StatelessWidget {
  const Beginner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Beginner Lesson'),
      ),
      body: SafeArea(
          child: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Greetings and Introduction'),
                  subtitle: Text('Salutation et Introduction'),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.numbers),
                  title: Text('Basic phrases'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.color_lens),
                  title: Text('Days of the Week and Month of the year'),
                  subtitle:
                      Text("Les jours de la semaine and Les mois de l'annee"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.family_restroom),
                  title: Text('Numbers and counting'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.timeline),
                  title: Text('Colors and describing things'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Family and relationships'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Time and dates'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Weather and seasons'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Public holidays and special days(Festivals)'),
                  subtitle: Text(''),
                  trailing: Icon(Icons.arrow_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Weather and seasons'),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}

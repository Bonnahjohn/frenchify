// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class Letter extends StatelessWidget {
  const Letter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text(' Letter Writing'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Informal letter'),
                  subtitle: Text('Lettre informelle'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pushNamed(context, '/Informal');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Formal Letter'),
                  subtitle: Text('Lettre formelle'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pushNamed(context, '/Formal');
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('Refusal and accepted invitation'),
                  subtitle: Text('Refuser et accepter une invitation'),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      )),
    );
  }
}

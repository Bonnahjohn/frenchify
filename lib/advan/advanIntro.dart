// ignore_for_file: unused_import, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class AdvanIntro extends StatelessWidget {
  const AdvanIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Sentence structure'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Narrative Essay'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.abc_sharp),
                title: Text('Descriptive Essay'),
                subtitle: Text(''),
                trailing: Icon(Icons.arrow_right),
                onTap: () {},
              ),
            ),
            Card(
              elevation: 8,
              shadowColor: Colors.blue,
              child: ListTile(
                leading: Icon(Icons.south_east_outlined),
                title: Text('Letter Writing'),
                subtitle: Text(''),
                onTap: () {},
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

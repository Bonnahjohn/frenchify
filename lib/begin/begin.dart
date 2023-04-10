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
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text('data'),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

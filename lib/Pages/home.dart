// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:frenchify/Pages/translator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('French Level'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Choose your french level skills and start studying.",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Expanded(
                flex: 2,
                child: GridView.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: [
                    Container(
                      width: 250,
                      height: 600,
                      color: Colors.black,
                    ),
                    Container(
                      width: 250,
                      height: 300,
                      color: Colors.black,
                    ),
                    Card(
                      elevation: 12,
                      child: Container(
                        width: 25,
                        height: 30,
                        color: Colors.green,
                        child: ListView(children: [
                          Text(
                            'Beginner lessons.',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                              "Hello, I've been using Frenchify language app for a few weeks now and I really like the app. The interface is simple and easy to navigate, and the exercises are helpful for improving my French skills. However, I noticed that the app occasionally crashes when I try to access the speaking exercises. It would be great if this issue could be fixed in a future update. Overall, I'm very satisfied with the app and would recommend it to others who are learning French.")
                        ]),
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      shadowColor: Colors.red,
                      elevation: 32,
                      child: SizedBox(
                        width: 25,
                        height: 30,
                        child: ListView(children: [
                          Text(
                            'Advance lessons.',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.diamond,
                              size: 25,
                            ),
                            title: Text(
                              'Personal study',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () =>
                                Navigator.pushNamed(context, '/advanIntro'),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      drawer: Drawers(),
    );
  }
}

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromRGBO(100, 149, 237, 1),
      child: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 50,
          width: 100,
          child: Text(
            'Frenchify  French  App',
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontFamily: 'serif'),
            textAlign: TextAlign.center,
          ),
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm home page and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.home,
            size: 25,
          ),
          title: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onTap: () => Navigator.pushNamed(context, '/homePage'),
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm personal and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.diamond,
            size: 25,
          ),
          title: Text(
            'Personal study',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          onTap: () => Navigator.pushNamed(context, '/personal'),
        ),

        /* mmmmmmmmmmmmmmmmmmmmmmmm home page and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.translate,
            size: 25,
          ),
          title: Text(
            'Translator',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          onTap: () => Navigator.pushNamed(context, '/translator'),
        ),
        Divider(
          color: Colors.white,
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm Settings and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 25,
          ),
          title: Text(
            'Settings',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          trailing: Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onTap: () => Navigator.pushNamed(context, '/Settings'),
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm About us and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.info_outline_rounded,
            size: 25,
          ),
          title: Text(
            'About Us',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          trailing: Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onTap: () => Navigator.pushNamed(context, '/About'),
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm feedback and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.feedback,
            size: 25,
          ),
          title: Text(
            'Feedback',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          trailing: Icon(
            Icons.arrow_right,
            size: 40,
          ),
          onTap: () => Navigator.pushNamed(context, '/feedback'),
        ),
      ]),
    );
  }
}

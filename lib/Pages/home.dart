// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('French Level'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            height: 50,
            width: 100,
            color: Color.fromRGBO(100, 149, 237, 1),
            child: Text(
              'Frenhify  French  App',
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
              style: TextStyle(fontSize: 20),
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
              style: TextStyle(fontSize: 20),
            ),
            //onTap: () => Navigator.pushNamed(context, '/homePage'),
          ),
          /* mmmmmmmmmmmmmmmmmmmmmmmm Dictionary and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
          ListTile(
            leading: Icon(
              Icons.library_books_sharp,
              size: 25,
            ),
            title: Text(
              'Dictionary',
              style: TextStyle(fontSize: 19),
            ),
            // onTap: () => Navigator.pushNamed(context, '/homePage'),
          ),
          /* mmmmmmmmmmmmmmmmmmmmmmmm home page and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
          ListTile(
            leading: Icon(
              Icons.translate,
              size: 25,
            ),
            title: Text(
              'Translator',
              style: TextStyle(fontSize: 19),
            ),
            //onTap: () => Navigator.pushNamed(context, '/homePage'),
          ),
          Divider(
            color: Color.fromRGBO(100, 149, 237, 1),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 25,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 19),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 40,
            ),
            //onTap: () => Navigator.pushNamed(context, '/homePage'),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              size: 25,
            ),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 19),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 40,
            ),
            //onTap: () => Navigator.pushNamed(context, '/homePage'),
          ),
          ListTile(
            leading: Icon(
              Icons.feedback,
              size: 25,
            ),
            title: Text(
              'Feedback',
              style: TextStyle(fontSize: 19),
            ),
            trailing: Icon(
              Icons.arrow_right,
              size: 40,
            ),
            //onTap: () => Navigator.pushNamed(context, '/homePage'),
          ),
        ]),
      ),
    );
  }
}

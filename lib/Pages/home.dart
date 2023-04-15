// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, body_might_complete_normally_nullable, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:frenchify/begin/begin.dart';
import 'package:frenchify/inter/intermediate.dart';
import 'package:frenchify/advan/advance.dart';

import 'package:frenchify/main.dart';
import 'package:frenchify/Pages/translator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//search query mmmmmmmmmmmmmmmmmm
bool _isSerached = false;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              child: Text('Beginner'),
            ),
            Tab(
              child: Text('Intermediate '),
            ),
            Tab(
              child: Text('Advance'),
            ),
          ]),
          backgroundColor: Color.fromRGBO(100, 149, 237, 1),
          title: _isSerached
              ? TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                  ),
                )
              : Text(
                  'French Level',
                  style: TextStyle(fontFamily: 'monospace'),
                ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _isSerached = !_isSerached;
                  });
                },
                icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: TabBarView(children: [Beginner(), Intermediate(), AdvanIntro()]),
        drawer: Drawers(),
      ),
    );
  }
}

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        Container(
          color: Color.fromRGBO(100, 149, 237, 1),
          padding: EdgeInsets.only(top: 10),
          height: 50,
          width: 100,
          child: Text(
            'Frenchify  French  App',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontFamily: 'serif'),
            textAlign: TextAlign.center,
          ),
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm home page and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.home,
            size: 20,
          ),
          title: Text(
            'Home',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          onTap: () => Navigator.pushNamed(context, '/homePage'),
        ),
        /* mmmmmmmmmmmmmmmmmmmmmmmm personal and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.note_add,
            size: 20,
          ),
          title: Text(
            'Note',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          onTap: () => Navigator.pushNamed(context, '/personal'),
        ),

        /* mmmmmmmmmmmmmmmmmmmmmmmm home page and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.translate,
            size: 20,
          ),
          title: Text(
            'Translator',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          onTap: () => Navigator.pushNamed(context, '/translator'),
        ),
        Divider(color: Colors.black),
        /* mmmmmmmmmmmmmmmmmmmmmmmm Settings and its navigation mmmmmmmmmmmmmmmmmmmmmm*\ */
        ListTile(
          leading: Icon(
            Icons.settings,
            size: 20,
          ),
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 16, color: Colors.black),
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
            size: 20,
          ),
          title: Text(
            'About Us',
            style: TextStyle(fontSize: 16, color: Colors.black),
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
            size: 20,
          ),
          title: Text(
            'Feedback',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
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

//mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm TabBar view of the app

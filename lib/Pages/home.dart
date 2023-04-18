// ignore_for_file: unused_import, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, non_constant_identifier_names, body_might_complete_normally_nullable, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:frenchify/Pages/about.dart';
import 'package:frenchify/Pages/feedback.dart';
import 'package:frenchify/begin/begin.dart';
import 'package:frenchify/inter/intermediate.dart';
import 'package:frenchify/advan/advance.dart';
import 'package:frenchify/Pages/translator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(indicatorColor: Colors.white, tabs: const [
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
          title: Text(
            'French Level',
            style: TextStyle(fontFamily: 'monospace'),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => About()));
                },
                icon: Icon(Icons.info_outline_rounded)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Feedbacks()));
                },
                icon: Icon(Icons.feedback)),
          ],
        ),
        body: TabBarView(
            children: const [Beginner(), Intermediate(), AdvanIntro()]),
      ),
    );
  }
}

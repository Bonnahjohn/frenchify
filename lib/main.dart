// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_import, avoid_web_libraries_in_flutter, import_of_legacy_library_into_null_safe, unused_element, non_constant_identifier_names, constant_identifier_names

import 'package:frenchify/begin/begin.dart';
import 'package:frenchify/inter/intermediate.dart';
import 'package:frenchify/advan/advance.dart';
import 'package:frenchify/Pages/translator.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:frenchify/Pages/home.dart';
import 'package:frenchify/Pages/about.dart';
import 'package:frenchify/Pages/feedback.dart';

void main() {
  runApp(MaterialApp(
    title: 'French Level',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark
                .copyWith(statusBarColor: Color.fromRGBO(100, 149, 237, 1)),
            child: Downappbar()));
  }
}

class Downappbar extends StatefulWidget {
  const Downappbar({super.key});

  @override
  State<Downappbar> createState() => _DownappbarState();
}

class _DownappbarState extends State<Downappbar> {
  int _selectedIndex = 0;

  static const List<Widget> _Show = <Widget>[
    HomePage(),
    Translator(),
    About(),
    Feedbacks()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _Show.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,

            // styling mmmmmmmmmmmmmmmmmmmmmmm
            elevation: 20,
            fixedColor: Color.fromRGBO(100, 149, 237, 1),
            iconSize: 28,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.translate_outlined),
                label: 'Translator',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info_outline),
                label: 'About Us',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.feedback_outlined),
                label: 'Feedback',
              ),
            ]));
  }
}

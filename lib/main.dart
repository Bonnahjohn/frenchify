// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_import, avoid_web_libraries_in_flutter, import_of_legacy_library_into_null_safe

import 'package:frenchify/begin/begin.dart';
import 'package:frenchify/inter/intermediate.dart';
import 'package:frenchify/advan/advance.dart';
import 'package:frenchify/Pages/translator.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:frenchify/Pages/home.dart';
import 'package:frenchify/Pages/about.dart';
import 'package:frenchify/Pages/feedback.dart';

// mmmmmmmmmmmmmmmmmmmmmmmmmmm beginner routing m mmmmmmmmmmmmmmmmmmmmm

import 'package:frenchify/begin/salutation.dart';
import 'package:frenchify/begin/basic.dart';
import 'package:frenchify/begin/days.dart';
import 'package:frenchify/begin/numbers.dart';
import 'package:frenchify/begin/color.dart';
import 'package:frenchify/begin/family.dart';
import 'package:frenchify/begin/time.dart';
import 'package:frenchify/begin/prof.dart';
import 'package:frenchify/begin/public.dart';
import 'package:frenchify/begin/weather.dart';
// mmmmmmmmmmmmmmmmmmmmmmmmmmm intermediate routing mmmmmmmmmmmmmmmmmmmmmm
import 'package:frenchify/inter/noun.dart';
import 'inter/pronoun.dart';
import 'package:frenchify/inter/verb.dart';
import 'package:frenchify/inter/Tense/tenses.dart';
import 'inter/Tense/present.dart';
import 'inter/Tense/future.dart';
import 'inter/Tense/past.dart';
import 'inter/adverb.dart';
import 'inter/adjective.dart';
import 'package:frenchify/inter/preposition.dart';
// mmmmmmmmmmmmmmmmmmmmmmmmmmm advance routing mmmmmmmmmmmmmmmmmmmmmm
import 'package:frenchify/advan/content.dart';
import 'advan/descriptive.dart';
import 'package:frenchify/advan/Letter/informal.dart';
import 'package:frenchify/advan/Letter/formal.dart';
import 'package:frenchify/advan/Letter/letterimage.dart';
import 'advan/sentence.dart';

void main() {
  runApp(MaterialApp(
    title: 'French Level',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/homePage': (context) => HomePage(),
      '/About': (context) => About(),
      '/feedback': (context) => Feedbacks(),
      '/translator': (context) => Translator(),
      '/Beginner': (context) => Beginner(),
      '/AdvanContent': (context) => Letter(),
      '/Informal': (context) => Informal(),
      '/Formal': (context) => Formal(),
      '/Image': (context) => Images(),
      '/Salutation': (context) => Salutation(),
      '/Basic': (context) => Basic(),
      '/Days': (context) => Days(),
      '/Numbers': (context) => Numbers(),
      '/Colors': (context) => Colour(),
      '/Weather': (context) => Weather(),
      '/family': (context) => Family(),
      '/time': (context) => Time(),
      '/prof': (context) => Prof(),
      '/public': (context) => Public(),
      '/noun': (context) => Noun(),
      '/pronoun': (context) => Pronoun(),
      '/verb': (context) => Verb(),
      '/preposition': (context) => Preposition(),
      '/tense': (context) => Tenses(),
      '/present': (context) => Present(),
      '/past': (context) => Past(),
      '/future': (context) => Future(),
      '/adverb': (context) => Adverb(),
      '/adjective': (context) => Adjective(),
      '/descriptive': (context) => Descriptive(),
      '/sentence': (context) => Sentence()
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
            child: Stack(
              children: [
                FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: MediaQuery.of(context).size.height * 0.5,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.none,
                  ),
                ),
                const Positioned(
                    left: 12,
                    top: 50,
                    child: SizedBox(
                      width: 400,
                      child: Text(
                        'Frenchify French Learning App',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 17,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Colors.yellowAccent),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                      ),
                    )),
                const Positioned(
                    top: 200,
                    left: 5,
                    child: SizedBox(
                      width: 380,
                      child: Text(
                        'Bonjour! Frenchify is the perfect app for anyone looking to learn or improve their French language skills, with its user-friendly interface and innovative features making learning fun and interactive.',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.orange,
                            fontSize: 16,
                            fontFamily: 'Roboto'),
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.justify,
                        textScaleFactor: 1.2,
                      ),
                    )),
                Positioned(
                    top: 550,
                    left: 50,
                    right: 50,
                    child: TextButton(
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(100, 149, 237, 1)),
                            elevation: MaterialStatePropertyAll(8),
                            fixedSize: MaterialStatePropertyAll(Size(100, 60))),
                        onPressed: () {
                          Navigator.pushNamed(context, '/homePage');
                        },
                        child: const Text(
                          'GET   STARTED',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Roboto'),
                        )))
              ],
            )));
  }
}

// ignore_for_file: unused_import, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_import

import 'package:flutter/material.dart';
import 'package:frenchify/Pages/drawer.dart';
import 'package:frenchify/Pages/home.dart';
import 'Pages/about.dart';
import 'Pages/feedback.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/homePage': (context) => HomePage(),
      '/Settings': (context) => Settings(),
      '/About': (context) => About(),
      '/feedback': (context) => Feedbacks(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: SafeArea(
                child: Stack(
              children: [
                // AspectRatio(
                //   aspectRatio:
                //       9 / 14, // Set the aspect ratio to match your image
                //   child: Image.asset(
                //     'assets/images/logo.jpg',
                //     fit: BoxFit
                //         .cover, // Set the image fit to cover the entire screen
                //     height: MediaQuery.of(context).size.height * 1,
                //   ),
                // ),
                FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: MediaQuery.of(context).size.height * 0.5,
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    fit: BoxFit.none,
                  ),
                ),
                // Image.asset(
                //   'assets/images/logo.jpg',
                //   fit: BoxFit.fill,
                //   height: 659,
                // ),
                const Positioned(
                    left: 12,
                    top: 50,
                    // right: 20,
                    child: SizedBox(
                      width: 350,
                      child: Text(
                        'Frenchify French Learning App',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Helvetica',
                            fontWeight: FontWeight.w600,
                            color: Colors.yellowAccent),
                        overflow: TextOverflow.clip,
                      ),
                    )),
                const Positioned(
                    top: 200,
                    left: 5,
                    child: SizedBox(
                      width: 375,
                      child: Text(
                        'Bonjour! Frenchify is the perfect app for anyone looking to learn or improve their French language skills, with its user-friendly interface and innovative features making learning fun and interactive.',
                        style: TextStyle(color: Colors.white, fontSize: 17),
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
                              fontSize: 20,
                              fontFamily: 'Georgia'),
                        )))
              ],
            ))),
      ),
    );
  }
}

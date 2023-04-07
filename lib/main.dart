import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Stack(
                  children: [
                    Image.asset('assets/images/logo.jpg',
                        fit: BoxFit.cover, height: 659),
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    // Image.asset(
                    //   'assets/images/logo.jpg',
                    //   fit: BoxFit.cover,
                    //   height: 659,
                    //   //width: 500,
                    // ),
                    const Positioned(
                        left: 12,
                        top: 50,
                        // right: 20,
                        child: Text(
                          'Frenchify French Learning App',
                          style: TextStyle(
                              fontSize: 28,
                              fontFamily: 'Helvetica',
                              fontWeight: FontWeight.w500,
                              color: Colors.yellowAccent),
                        )),
                    const Positioned(
                        top: 200,
                        left: 5,
                        child: SizedBox(
                          width: 400,
                          child: Text(
                            'Bonjour! Frenchify is the perfect app for anyone looking to learn or improve their French language skills, with its user-friendly interface and innovative features making learning fun and interactive.',
                            style: TextStyle(shadows: [
                              Shadow(
                                blurRadius: 5,
                                color: Colors.black,
                                offset: Offset(2, 2),
                              ),
                            ], color: Colors.white, fontSize: 19),
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
                                fixedSize:
                                    MaterialStatePropertyAll(Size(100, 60))),
                            onPressed: () {},
                            child: const Text(
                              'GET   STARTED',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Georgia'),
                            )))
                  ],
                )
              ],
            ))),
      ),
    );
  }
}

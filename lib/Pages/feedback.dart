// ignore_for_file: unused_import

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(100, 149, 237, 1),
        title: const Text('Feedback'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "'Bonjour to all Frenchify users! We are thrilled to have you learning French with our app. We hope that you are finding the exercises helpful and that you're making progress in your language journey. We value your feedback, so please don't hesitate to share any suggestions or issues you encounter with us. Our team is constantly working to improve the app and provide you with the best learning experience possible. Merci beaucoup for choosing Frenchify!'",
                style: TextStyle(fontSize: 17, fontFamily: 'Arial'),
                textAlign: TextAlign.justify,
                overflow: TextOverflow.clip,
                strutStyle: StrutStyle(
                    leadingDistribution: TextLeadingDistribution.proportional),
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                  text:
                      'Send any suggestion or issues you encouter through this email address:',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                TextSpan(
                    text: 'Frenchify@gmail.com',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Color.fromRGBO(100, 149, 237, 1)),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ]))
            ],
          ),
        ),
      )),
    );
  }
}

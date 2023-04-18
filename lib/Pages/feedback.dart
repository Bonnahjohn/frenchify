// ignore_for_file: unused_import, deprecated_member_use, depend_on_referenced_packages

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'package:url_launcher/url_launcher.dart';

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
                style: TextStyle(fontSize: 16, fontFamily: 'Arial'),
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
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                TextSpan(
                    text: 'Frenchifyteam@gmail.com',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(100, 149, 237, 1)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        final Uri params = Uri(
                          scheme: 'mailto',
                          path: 'Frenchifyteam@gmail.com',
                        );
                        String url = params.toString();
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }),
              ]))
            ],
          ),
        ),
      )),
    );
  }
}

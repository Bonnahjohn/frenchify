// ignore_for_file: unused_import, prefer_const_constructors, file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';

class Informal extends StatelessWidget {
  const Informal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Informal  Letter'),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SelectableText.rich(TextSpan(children: const [
                TextSpan(
                    text:
                        'As we have a style of writing letter to our loved ones in every language around the world.French peoples also have a way of writing theirs.So in this lesson we are going to look at how we are going to write letters to our mates,family members and our neighbours.In all this type of letter is called ',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                TextSpan(
                    text: 'INFORMAL LETTER.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17)),
                TextSpan(
                    text:
                        "\nWhen writing an informal letter in French, French people tend to use a more personal and casual tone than they would in a formal letter. Here are some common elements of an informal letter in French:",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                TextSpan(
                    text: '\n \nFeatures of the letter',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: '\n1.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text:
                        'Date: The letter usually begins with the date, written in the format "Le [day] [month] [year]".',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17)),
                TextSpan(
                    text: '\n2.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text:
                        'Salutation: The letter usually begins with "Cher/Chère" (Dear) followed by the first name of the recipient or a nickname, depending on how close the writer is to the recipient.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17)),
                TextSpan(
                    text: '\n3.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                TextSpan(
                    text:
                        'Introduction: The writer usually begins by expressing their pleasure in writing to the recipient and may ask how they are doing.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n4.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text:
                        'Main body: This is where the writer expresses the purpose of the letter, such as sharing news, updating the recipient on recent events, or simply catching up. The writer may use colloquial language and slang to make the letter sound more casual and personal.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n5.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text:
                        'Closing: The letter usually ends with a closing phrase, such as "Affectueusement" (Affectionately), "Bisous" (Kisses), or "Amicalement" (Sincerely), depending on the relationship between the writer and the recipient.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n6.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text:
                        'Signature: The writer signs the letter with their first name or a nickname, depending on their relationship with the recipient.',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
              ])),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color.fromRGBO(100, 149, 237, 1),
              ),
              RichText(
                  text: TextSpan(children: const [
                TextSpan(
                    text:
                        "\n Some of the examples of the salutation (formule d'appel) are as follows;But note that if we are using Chèr addition with some names we should ensure that if the name we are referring to is a female we will  add E at the end of the chere like this (Chère) but if the name we are referring to is a male then we should maintain it as it is.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal)),
                TextSpan(
                    text:
                        "\n \nExamples of the salutation \n (Formule d'appel)",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: '\n1.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "Dear son/Dear daughter\n    Chèr fils / Chère fille",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17)),
                TextSpan(
                    text: '\n2.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "Dear Friend\n     Chèr ami(M) / Chère amie(F)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 17)),
                TextSpan(
                    text: '\n3.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "My old\n     Mon viuex copain",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n4.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "my little Leo\n     Mon  petit Léo",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n5.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "My dear \n     Ma Chère amie",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
              ])),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color.fromRGBO(100, 149, 237, 1),
              ),
              RichText(
                  text: TextSpan(children: const [
                TextSpan(
                    text: "\n \nExamples of the closing",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: '\n1.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "Your friend\n     Ton amie(F) /Ton ami(M)",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n2.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "See you soon\n     À bientot",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n3.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "Good bye\n     Au revoir",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n4.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "Kiss\n     Bisou",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: '\n5.',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)),
                TextSpan(
                    text: "I your friend,\n    Je t'aime,",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text:
                        "\n\nNote that after the subscription you have to print your name (signature) under the subscription like this;",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 16)),
                TextSpan(
                    text: "\nTon amie, \n Kevelyn",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
                TextSpan(
                    text: "\n\nAu revoir,\nGodwin",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.normal,
                        fontSize: 16)),
              ])),
              SizedBox(
                height: 30,
              ),
              Text(
                'Below is an image showing the sample of informal letter.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
              InteractiveViewer(
                boundaryMargin:
                    EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                panEnabled: true,
                scaleEnabled: true,
                maxScale: 3,
                minScale: 0.5,
                child: Image.asset(
                  'assets/images/letter.jpg',
                  width: 600,
                  height: 500,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

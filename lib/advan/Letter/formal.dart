// ignore_for_file: unused_import, prefer_const_constructors, file_names, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, dead_code, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:frenchify/main.dart';
import 'config.dart';

class Formal extends StatelessWidget {
  const Formal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 149, 237, 1),
        title: Text('Formal  Letter'),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          itemCount: note.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              // Display the introduction text at index 0
              return SelectableText(
                myText,
                style: TextStyle(fontSize: 16),
              );
            } else if (index == note.length + 1) {
              // Display the note at the bottom
              return SelectableText(onTap: () {
                //Navigator.pushNamed(context, '/home');
              }, focus,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400));
            } else {
              // Display each sentence as a ListTile with a number
              return ListTile(
                horizontalTitleGap: 1,
                leading: Text(
                  '${index}.',
                  style: TextStyle(color: Colors.green[400]),
                ),
                title: SelectableText(note[index - 1]),
              );
            }
          },
        ),
      ),
    );
  }
}

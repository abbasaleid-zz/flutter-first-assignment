import 'package:flutter/material.dart';

import './text_manager.dart';

void main() {
  runApp(TextEditor());
}

class TextEditor extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Editor'),
        ),
        body: TextManager(firstName: 'Mohammad', lastName: 'Ali', bDate: 'January 17, 1942', gender: 'Male', img: './assets/muhammad.jpg',),
      ),
    );
  }
}

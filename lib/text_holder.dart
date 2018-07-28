import 'package:flutter/material.dart';

import './text_manager.dart';

class TextHolder extends StatelessWidget {
  final List<TextManager> listTextManager;

  TextHolder({this.listTextManager});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: listTextManager
          .map((element) => Card(
              margin: EdgeInsets.all(3.0),
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset((element.img).toString()),
                    Text('First Name: ' + element.firstName),
                    Text('Last Name: ' + element.lastName),
                    Text('Birth Date: ' + element.bDate),
                    Text('Gender: ' + element.gender)
                  ],
                ),
              )))
          .toList(),
    );
  }
}

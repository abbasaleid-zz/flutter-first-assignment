import 'package:flutter/material.dart';

import './text_holder.dart';

class TextManager extends StatefulWidget {
  final String firstName, lastName, bDate, gender, img;

  TextManager({this.firstName, this.lastName, this.bDate, this.gender, this.img});

  @override
  State<StatefulWidget> createState() {
    return _TextManagerState();
  }
}

class _TextManagerState extends State<TextManager> {
  List<TextManager> _listTextManager = [];
  @override
  void initState() {
    super.initState();
    _listTextManager.add(TextManager(
      firstName: widget.firstName,
      lastName: widget.lastName,
      bDate: widget.bDate,
      gender: widget.gender,
      img: widget.img,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextHolder(
          listTextManager: _listTextManager,
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            child: Text('Load Rnadom'),
            onPressed: () {
              setState(() {
                _listTextManager.add(TextManager(
                    firstName: 'Jordan',
                    lastName: 'Peterson',
                    bDate: 'June 12, 1962',
                    gender: 'Male',
                    img: './assets/jordan.jpg',));
              });
            },
          ),
        )
      ],
    );
  }
}

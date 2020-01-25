import 'package:flutter/material.dart';

class Goal extends StatelessWidget {
  final String title;
  final String description;

  Goal({this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

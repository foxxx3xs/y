import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_app/main.dart';

class mag extends StatefulWidget {
  final String username;
  mag(this.username) : super();

  @override
  _magState createState() => _magState();
}


class _magState extends State<mag> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    child: Text("$this.username"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

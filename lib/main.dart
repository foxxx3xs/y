import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'usernameandpassworddisplay.dart';

void main() => runApp(MaterialApp(
      home: Lol(),
    ));

class Lol extends StatefulWidget {
  @override
  _LolState createState() => _LolState();
}

class _LolState extends State<Lol> {
  String username = "null";
  TextEditingController emailController = new TextEditingController();
  TextEditingController emailControllerr = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      0, MediaQuery.of(context).size.height * 0.2, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: TextField(
                    onChanged: (text){username = text;},
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      0, MediaQuery.of(context).size.height * 0.2, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50,
                  child: TextField(
                    controller: emailControllerr,
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => mag(username)),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(
                        0, MediaQuery.of(context).size.height * 0.2, 0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 50,
                    child: Center(child: Text("Next Page")),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: app(),
      ),
    ));
  }
}

class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  List<Icon> scorekeeper = [];
  void truebutton() => setState(() {
        scorekeeper.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      });
  void falsebutton() => setState(() {
        scorekeeper.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Center(
              child: Container(
                child: Text(
                  'This is where the questions will go to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: TextButton(
                onPressed: truebutton,
                child: Text(
                  'True',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: TextButton(
                onPressed: falsebutton,
                child: Text(
                  'False',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          //TODO: add a row here for score keeper
          Row(
            children: scorekeeper,
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import '../utils/questions.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Expanded(
              child: new Material(
                color: Colors.greenAccent,
                child: new InkWell(
                  onTap: () => print("I have tapped true button"),
                  child: new Center(
                    child: new Container(
                      child: new Text("True"),
                    ),
                  ),
                ),
              ),
            ),
            new Expanded(
                child: new Material(
              color: Colors.redAccent,
              child: new InkWell(
                onTap: () => print("I have tapped false button"),
                child: new Center(
                  child: new Container(
                    child: new Text("True"),
                  ),
                ),
              ),
            ))
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import '../utils/questions.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget{

  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage>{

  @override
  Widget build(BuildContext context){
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Expanded(
                  child: new Material(
                  color: Colors.greenAccent,
                    child: new InkWell(
                      onTap: () => print("I have tapped in quiz_page file"),
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
                  color: Colors.greenAccent,
                  child: new InkWell(
                    onTap: () => print("I have tapped in quiz_page file"),
                    child: new Center(
                      child: new Container(
                        child: new Text("True"),
                      ),
                    ),
                  ),
                )
            )

          ],
        )
      ],
    );

  }
}
import 'package:flutter/material.dart';
import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/correct_wrong_overlay.dart';
import '../utils/questions.dart';
import '../utils/quiz.dart';

class QuizPage extends StatefulWidget {

  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {

  Questions currentQuestion;
  Quiz quiz = new Quiz([
    new Questions("Is Elon Musk a human?", false),
    new Questions("Is Pizza healthy", true),
    new Questions("Is your favorite movie Pulp Fiction?", true)
  ]);

  String questionText;
  int questionNumber;
  bool isCorrect;
  bool overlayShouldBeVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentQuestion= quiz.nextQuestion;
    questionText= currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }


  void handleAnswer(bool answer){
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState((){
      overlayShouldBeVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => handleAnswer(true)),
            new QuestionText(questionText,questionNumber),
            new AnswerButton(false,() => handleAnswer(false))
          ],
        ),
        overlayShouldBeVisible== true ? new CorrectWrongOverlay(
          isCorrect,
            (){
            currentQuestion = quiz.nextQuestion;
            this.setState((){
              overlayShouldBeVisible = false;
              questionText = currentQuestion.question;
              questionNumber = quiz.questionNumber;
            });
            }
        ) : new Container(),
      ],
    );
  }
}

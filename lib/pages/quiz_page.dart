import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';
import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column( // this is our main page
          children: <Widget>[
          new AnswerButton(true, () => print("You answered true.")),
          new QuestionText('Pizza is nice', 1),
          new AnswerButton(false, () => print("You answered false.")),
          ],
        ),
        new CorrectWrongOverlay()
      ],
    );
  }
}
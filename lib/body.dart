import 'package:flutter/material.dart';
import 'Quiz_brain.dart';

class quizzler_body extends StatefulWidget {
  const quizzler_body({Key? key}) : super(key: key);

  @override
  _quizzler_bodyState createState() => _quizzler_bodyState();
}

class _quizzler_bodyState extends State<quizzler_body> {
  Icon tick() {
    return Icon(
      Icons.check,
      color: Colors.green,
    );
  }

  Icon cross() {
    return Icon(
      Icons.close,
      color: Colors.red,
    );
  }

  List<Icon> scoreKeeper = [];

  int quesno = 0;

  QuizBrain quizBrain = QuizBrain();

  void checkAnswer(bool userPicked) {
    if (quizBrain.getAns() == userPicked)
      scoreKeeper.add(tick());
    else
      scoreKeeper.add(cross());
    quizBrain.nextQues();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                quizBrain.getQues(),
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                setState(() {
                  checkAnswer(true);
                });
              },
              child: Text(
                'True',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  checkAnswer(false);
                });
              },
              child: Text(
                'False',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

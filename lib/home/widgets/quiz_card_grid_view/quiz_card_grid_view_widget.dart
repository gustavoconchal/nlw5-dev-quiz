import 'package:dev_quiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class QuizCardGridViewWidget extends StatelessWidget {
  const QuizCardGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: [
            QuizCardWidget(),
            QuizCardWidget(),
            QuizCardWidget(),
            QuizCardWidget(),
            QuizCardWidget(),
            QuizCardWidget(),
            QuizCardWidget(),
            QuizCardWidget()
          ])),
    );
  }
}

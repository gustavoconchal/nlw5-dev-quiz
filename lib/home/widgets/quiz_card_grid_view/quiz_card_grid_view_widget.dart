import 'package:dev_quiz/challenge/challenge_page.dart';
import 'package:dev_quiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:flutter/material.dart';

class QuizCardGridViewWidget extends StatelessWidget {
  final List<QuizModel> quizzes;
  const QuizCardGridViewWidget({Key? key, required this.quizzes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              children: quizzes
                  .map((e) => QuizCardWidget(
                        quiz: e,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChallengePage()));
                        },
                      ))
                  .toList())),
    );
  }
}

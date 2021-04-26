import 'package:dev_quiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:dev_quiz/challenge/widgets/question_indicator_widget/question_indicator_widget.dart';
import 'package:dev_quiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
      ),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: NextButtonWidget(
                  confirm: false,
                ),
              ),
              SizedBox(width: 7),
              Expanded(
                child: NextButtonWidget(
                  confirm: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

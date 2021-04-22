import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  final QuizModel quiz;

  const QuizCardWidget({Key? key, required this.quiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          borderRadius: BorderRadius.circular(10),
          color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(quiz.imagem),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            quiz.title,
            style: AppTextStyles.heading15,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  quiz.questionAnswered.toString() +
                      "/" +
                      quiz.questions.length.toString(),
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                  flex: 2,
                  child: ProgressIndicatorWidget(value: quiz.percentage()))
            ],
          )
        ],
      ),
    );
  }
}

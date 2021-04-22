import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  final int percentage;
  const ChartWidget({Key? key, required this.percentage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                value: percentage.toDouble() / 100,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
            child: Text(
              percentage.toString() + "%",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}

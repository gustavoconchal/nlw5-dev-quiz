import 'package:dev_quiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class LevelButtonRowWidget extends StatelessWidget {
  const LevelButtonRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LevelButtonWidget(
          label: "Fácil",
        ),
        LevelButtonWidget(
          label: "Médio",
        ),
        LevelButtonWidget(
          label: "Difícil",
        ),
        LevelButtonWidget(
          label: "Perito",
        ),
      ],
    ));
  }
}

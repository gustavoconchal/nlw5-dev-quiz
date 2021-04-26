import 'package:dev_quiz/core/app_button_styles.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  final bool confirm;

  const NextButtonWidget({
    Key? key,
    required this.confirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: confirm
            ? AppButtonStyles.buttonConfirm
            : AppButtonStyles.buttonSkip,
        onPressed: () {},
        child: Text(
          confirm ? "Confirmar" : "Pular",
          style:
              confirm ? AppTextStyles.buttonConfirm : AppTextStyles.buttonSkip,
        ),
      ),
    );
  }
}

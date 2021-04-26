import 'package:dev_quiz/home/home_repository.dart';
import 'package:dev_quiz/shared/enum_state.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final stateNotifier = ValueNotifier<EnumState>(EnumState.empty);

  set state(EnumState state) => stateNotifier.value = state;
  EnumState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = EnumState.loading;
    user = await repository.getUser();
    state = EnumState.success;
  }

  void getQuizzes() async {
    state = EnumState.loading;
    quizzes = await repository.getQuizzes();
    state = EnumState.success;
  }
}

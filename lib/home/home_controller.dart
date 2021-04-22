import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 3));
    user = UserModel(
        name: "Gustavo Conchal",
        photoUrl: "https://avatars.githubusercontent.com/u/15312147?v=4",
        score: 66);
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 3));
    quizzes = [
      QuizModel(
        title: "Gerenciamento de Estado",
        imagem: AppImages.data,
        level: Level.easy,
        questionAnswered: 1,
        questions: [
          QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ]),
          QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ])
        ],
      ),
      QuizModel(
        title: "Construindo Interfaces",
        imagem: AppImages.laptop,
        level: Level.easy,
        questionAnswered: 3,
        questions: [
          QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ]),
          QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ]),
          QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ]),
          QuestionModel(
              title: "O que o Flutter faz em sua totalidade?",
              answers: [
                AnswerModel(
                    title: "Kit de desenvolvimento de interface de usuário"),
                AnswerModel(title: "Acho que é uma marca de café do Himalaia"),
                AnswerModel(
                    title:
                        "Possibilita a criação de aplicativos compilados nativamente",
                    isRight: true),
                AnswerModel(
                    title:
                        "Possibilita a criação de desktops que são muito incríveis"),
              ])
        ],
      ),
    ];
    state = HomeState.success;
  }
}

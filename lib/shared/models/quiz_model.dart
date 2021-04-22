import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { easy, medium, hard, expert }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswered;
  final String imagem;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswered = 0,
    required this.imagem,
    required this.level,
  });

  double percentage() {
    return this.questionAnswered / this.questions.length;
  }
}
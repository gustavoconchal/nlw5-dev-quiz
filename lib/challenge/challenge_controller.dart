import 'package:flutter/material.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier<int>(1);
  set currentPage(int value) => currentPageNotifier.value = value;
  int get currentPage => currentPageNotifier.value;
}

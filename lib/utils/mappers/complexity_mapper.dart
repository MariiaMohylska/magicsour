import 'package:magicsour/models/complexity.dart';
import 'package:magicsour/s_localization.dart';

class ComplexityMapper {
  static String complexityToString(
      Complexity complexity) {
    switch (complexity) {
      case Complexity.easy:
        return S.instance!.easy;
      case Complexity.medium:
        return S.instance!.medium;
      case Complexity.hard:
        return S.instance!.hard;
      case Complexity.extraHard:
        return S.instance!.extraHard;
    }
  }

  static Complexity? complexityFromString(
      String complexity) =>
      {
        S.instance!.easy: Complexity.easy,
        S.instance!.medium: Complexity.medium,
        S.instance!.hard: Complexity.hard,
        S.instance!.extraHard: Complexity.extraHard,
      }[complexity];

  static int complexityToNumber(
      Complexity complexity) {
    switch (complexity) {
      case Complexity.easy:
        return 1;
      case Complexity.medium:
        return 2;
      case Complexity.hard:
        return 3;
      case Complexity.extraHard:
        return 4;
    }
  }

  static Complexity complexityFromNumber(
      int complexity) =>
      {
        1: Complexity.easy,
        2: Complexity.medium,
        3: Complexity.hard,
        4: Complexity.extraHard,
      }[complexity] ?? Complexity.medium;
}
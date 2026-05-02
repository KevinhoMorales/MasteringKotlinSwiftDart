// ignore_for_file: avoid_print
//
//  advanced_functional.dart
//  MasteringDart
//
//  Capítulo 15 — Programación funcional.
//  Nivel AVANZADO: StudentScoreSystem — map scores, filter aprobados, reduce a media.
//
//  Ejecutar con: dart run lib/chapters/chapter15/advanced/advanced_functional.dart

class Student {
  final String name;
  final int score;
  const Student(this.name, this.score);
  @override
  String toString() => 'Student($name, $score)';
}

void runAdvancedFunctionalExamples() {
  const students = [
    Student('Alice', 85),
    Student('Bob', 72),
    Student('Charlie', 90),
    Student('Diana', 58),
    Student('Eve', 88),
  ];
  const passingThreshold = 60;

  print('========================================');
  print('       STUDENT SCORE SYSTEM');
  print('========================================');
  print('Students: $students');
  print('Passing threshold: $passingThreshold');

  final scores = students.map((s) => s.score).toList();
  print('Scores (map): $scores');

  final passingScores = scores.where((s) => s >= passingThreshold).toList();
  print('Passing scores (filter): $passingScores');

  final sum = passingScores.isEmpty
      ? 0
      : passingScores.reduce((a, b) => a + b);
  final average =
      passingScores.isEmpty ? 0.0 : sum / passingScores.length;
  print('Average of passing: $average');

  final passingList = students
      .map((s) => s.score)
      .where((s) => s >= passingThreshold)
      .toList();
  final avgPassing = passingList.isEmpty
      ? 0.0
      : passingList.reduce((a, b) => a + b) / passingList.length;
  print('Pipeline average (passing only): $avgPassing');
  print('========================================');
}

void main() {
  runAdvancedFunctionalExamples();
}

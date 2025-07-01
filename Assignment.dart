import 'dart:io';
String assignGrade(double score) {
  if (score >= 80 && score <= 100) return 'A';
  if (score >= 75 && score < 80) return 'B+';
  if (score >= 70 && score < 75) return 'B';
  if (score >= 65 && score < 70) return 'C+';
  if (score >= 60 && score < 65) return 'C';
  if (score >= 55 && score < 60) return 'D+';
  if (score >= 50 && score < 55) return 'D';
  if (score >= 45 && score < 50) return 'E';
  return 'F';
}

void main() {
  print('Student Grade Calculator');
  print('------------------------');

  stdout.write('Enter number of students: ');
  int numStudents = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= numStudents; i++) {
    print('\nStudent $i:');
    stdout.write('Enter Continuous Assessment score: ');
    double ca = double.parse(stdin.readLineSync()!);

    stdout.write('Enter Exam score: ');
    double exam = double.parse(stdin.readLineSync()!);

    stdout.write('Enter Project score: ');
    double project = double.parse(stdin.readLineSync()!);

    double total = ca + exam + project;
    String grade = assignGrade(total);

    print('Total Score: $total');
    print('Letter Grade: $grade');
  }

  print('\nAll grades calculated and ready for submission!');
}
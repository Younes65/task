import 'dart:io';
import 'dart:math';

var studentList = [];
bool isValid = false;
var temp;
String? name;
int? age;
int? score;
void main() {
  try {
    print('Enter your name..');
    name = stdin.readLineSync();
    print('Enter your age ..');
    temp = stdin.readLineSync();
    age = int.parse(temp);
    print('Enter your score..');
    temp = stdin.readLineSync();
    score = int.parse(temp);
    while (!(isValid)) {
      checkStudentConstraints(name!, age!, score!);
      checkFucalty(score!);
    }
  } catch (e) {
    print('error $e');
  }
}

bool checkStudentConstraints(String? n, int ag, int sc) {
  if (n!.length < 3) {
    print('Name must be more than that');
    print('Enter your name ');
    n = stdin.readLineSync();
    name = n;
    return isValid;
  }
  if (ag < 16) {
    print('under age must be more than 16');
    print('Enter your age');
    temp = stdin.readLineSync();
    ag = int.parse(temp);
    age = ag;
    return isValid;
  }
  if (!(sc >= 0 && sc <= 100)) {
    print('not valid');
    print('Enter your another score ');
    temp = stdin.readLineSync();
    sc = int.parse(temp);
    score = sc;
    return isValid;
  }
  return isValid = true;
}

checkFucalty(int score) {
  if (score >= 90 && score <= 100) {
    print('congrats you are qualified for medicin');
  } else if (score <= 90 && score >= 56) {
    print('congrats.. you are qualified for engineering');
  } else {
    print('failed');
  }
}

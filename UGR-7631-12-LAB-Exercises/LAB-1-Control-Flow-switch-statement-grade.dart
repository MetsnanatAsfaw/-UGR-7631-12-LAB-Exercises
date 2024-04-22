import 'dart:io';

void main() {
  print("Please enter the grade to see the corresponding letter grade:");
  int grade = int.parse(stdin.readLineSync()!);

  String letterGrade;

  switch (grade) {
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
      letterGrade = "A+";
      break;
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
      letterGrade = "A";
      break;
    case 80:
    case 81:
    case 82:
    letterGrade = "A-";
      break;
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
      letterGrade = "B+";
      break;
    
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    letterGrade = "B";
      break;
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
      letterGrade = "B-";
      break;

    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    letterGrade = "C+";
      break;
    case 59: 
    case 58:
    case 57:
    case 56:
    case 55:     
      letterGrade = "C";
      break;

    case 54: 
    case 53:
    case 52:
    case 51:
    case 50:     
      letterGrade = "C-";
      break;

    case 49: 
    case 48:
    case 47:
    case 46:
    case 45:     
      letterGrade = "D";
      break;
    
    default:
      letterGrade = "F";
      break;
  }

  print("Letter Grade: $letterGrade");
}
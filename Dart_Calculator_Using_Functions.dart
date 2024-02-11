import 'dart:ffi';
import 'dart:io';
import 'dart:math';

// Loading Screen
void loading() {
  print("Loading...");
  print("Loading Complete! \n\n");
}

// Entire Menu List
void menuList() {
  print("1: For Addition.");
  print("2: For Subtraction.");
  print("3: For Multiplication.");
  print("4: For Division.");
  print("5: For Modulus.");
  print("6: For Finding Square.");
  print("7: For Finding Cube.");
  print("8: For Square Root.");
  print("9: For Cubic Root.");
  print("10: For Log 10.");
  print("11: For Log 2.");
  print("12: For Sin Function.");
  print("13: For Cose Function.");
  print("14: For Tan Function.");
  print("15: For Sin-1 Function.");
}

// User Input Function
double numInput() {
  print("\nEnter Operand for Calculation: ");
  double number = double.parse(stdin.readLineSync()!);
  return number;
}

int operationChoice() {
  print("\nEnter From Menu List for Calculation: ");
  int operation = int.parse(stdin.readLineSync()!);
  return operation;
}

void main(List<String> args) {
  loading();
  menuList();
  print("\n\n");
  double num1 = numInput();
  double num2 = 0.0;
  double? answer = 0.0;
  int operandNo = operationChoice();

// Avoid for Double Input

  if (operandNo > 0 && operandNo < 6) {
    num2 = numInput();
  }

// Switch Case Statement for all Calculations
  switch (operandNo) {
    case 1:
      answer = num1 + num2;
      print("\n\nYour Result is Here");
      print("$num1 + $num2 = $answer");
      break;

    case 2:
      answer = num1 - num2;
      print("\n\nYour Result is Here");
      print("$num1 - $num2 = $answer");
      break;

    case 3:
      answer = num1 * num2;
      print("\n\nYour Result is Here");
      print("$num1 * $num2 = $answer");
      break;

    case 4:
      answer = num1 / num2;
      print("\n\nYour Result is Here");
      print("$num1 / $num2 = $answer");
      break;

    case 5:
      answer = num1 % num2;
      print("\n\nYour Result is Here");
      print("$num1 % $num2 = $answer");
      break;

    case 6:
      answer = pow(num1, 2) as double?;
      print("\n\nYour Result is Here");
      print("Square of $num1 is $answer");
      break;

    case 7:
      answer = pow(num1, 3) as double?;
      print("\n\nYour Result is Here");
      print("Cube of $num1 is $answer");
      break;

    case 8:
      answer = sqrt(num1);
      print("\n\nYour Result is Here");
      print("Square Root of $num1 is $answer");
      break;

    case 9:
      answer = pow(num1, 1 / 3) as double?;
      print("\n\nYour Result is Here");
      print("Cube Root of $num1 is $answer");
      break;

    case 10:
      answer = log(num1) / log(10);
      print("\n\nYour Result is Here");
      print("Log 10 of $num1 is $answer");
      break;

    case 11:
      answer = log(num1) / log(2);
      print("\n\nYour Result is Here");
      print("Log 2 of $num1 is $answer");
      break;

    case 12:
      answer = sin(num1);
      print("\n\nYour Result is Here");
      print("Sin($num1) wil be $answer");
      break;

    case 13:
      answer = cos(num1);
      print("\n\nYour Result is Here");
      print("Cos($num1) wil be $answer");
      break;

    case 14:
      answer = tan(num1);
      print("\n\nYour Result is Here");
      print("Tan($num1) wil be $answer");
      break;

    case 15:
      answer = asin(num1);
      print("\n\nYour Result is Here");
      print("Sin Inverse of $num1 is $answer");
      break;

    default:
      print("Invalid Operators");
  }
}

import 'dart:ffi';
import 'dart:io';
import 'dart:math';

// Loading Screen
void loading() {
  print("Loading...");
  print("Loading Complete!");
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
  print("10: For Simple Log.");
  print("11: For Log 2.");
  print("12: For Sin Function.");
  print("13: For Cose Function.");
  print("14: For Tan Function.");
  print("15: For Sin-1 Function.");
}

// User Input Function
double numInput() {
  print("Enter Operand for Calculation: ");
  double number = double.parse(stdin.readLineSync()!);
  return number;
}

double operationChoice() {
  print("Enter From Menu List for Calculation: ");
  double operation = double.parse(stdin.readLineSync()!);
  return operation;
}

void main(List<String> args) {
  double num1 = numInput();
  double num2 = numInput();
}

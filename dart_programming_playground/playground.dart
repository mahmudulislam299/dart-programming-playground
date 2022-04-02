// this is dart playground
//Tutorial link: https://www.youtube.com/watch?v=Ej_Pcr4uC2Q
// freeCodeCamp.org :: Dart programming tutorial - Full Course

import 'dart:io'; // input output

void main() {
  print("hello world");

  variable_func();
  // inputOutput_func();
  dataType_func();
}

void variable_func() {
  var firstName = 'Mahmudul';
  String lastName = 'Islam';
  print(firstName + ' ' + lastName);
}

void inputOutput_func() {
  stdout.writeln("what is your name: ?");
  String name = stdin.readLineSync()!; // ! is used for null safety
  print('my name is $name');
}

void dataType_func() {
  /*
    int
    double
    String
    bool
    dynamic
  */
  int amount1 = 100;
  var amount2 = 200;
  print('Amount 1: $amount1 | Amount 2: $amount2');

  String name1 = 'hello';
  var name2 = 'world';
  print('My name is $name1 $name2');

  bool bIsItTrue1 = true;
  var bIsItTrue2 = false;
  print('isItTrue1 : $bIsItTrue1 | isItTrue: $bIsItTrue2');

  dynamic weakVar = 100;
  print('weak var1 $weakVar');
  weakVar = 'dart programming';
  print('weakVar 2: $weakVar');
}

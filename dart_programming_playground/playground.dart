// this is dart playground
//Tutorial link: https://www.youtube.com/watch?v=Ej_Pcr4uC2Q
// freeCodeCamp.org :: Dart programming tutorial - Full Course

import 'dart:io'; // input output

void main() {
  print("hello world");

  variable_func();
  // inputOutput_func();
  dataType_func();
  string_func();
  constVariable_func();
}

void variable_func() {
  var firstName = 'Mahmudul';
  String lastName = 'Islam';
  print(firstName + ' ' + lastName);

  /*
  if variable not assigned any value
  it will contain null
  */
  // int num;
  // print(num);
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

void string_func() {
  var s1 = 'Single quote works well';
  var s2 = "Double quote works";
  var s3 = 'it\'s my name';
  var s4 = "it's my name";

  print(s1);
  print(s2);

  print(s3);
  print(s4);

  //Raw String
  var s = r'In a raw string, not even \n gets special treatment';
  print(s);

  /*
  String interpolation
  */
  var age = 25;
  var str = "my age is $age";
  print(str);

  /*
  multi-line string
  */

  var muls1 = '''
you can create
multi-line string like this one.
''';
  var muls2 = """This is also
  a multi-line string.""";

  print(muls1);
  print(muls2);
}

void typeConversion_func() {
// String -> int
  var one = int.parse('1');
  assert(one == 1); //to verify value; if its not true it will show error

  // String -> double
  var onePointone = double.parse('s1.1jj');
  assert(onePointone == 1.1); // to verify value. if not true it will show error

  // int -> String
  String oneAsString = 1.toString(); // here 1 is also a object
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.1416.toStringAsFixed(2); //show two digit after point
  assert(piAsString == '3.14');
}

void constVariable_func() {
  /*
  during runtime the variable value wont change
  */
  const aConstNum = 0; // int const
  const aConstBool = true; // bool const
  const aConstString = 'a const string'; // string const

  print(aConstNum);
  print(aConstBool);
  print(aConstString);

  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);
}

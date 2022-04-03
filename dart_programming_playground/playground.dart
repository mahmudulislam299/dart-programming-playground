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
  operator_func();
  null_aware_operator_func();
  typeTest_func();
  conditional_func();
  loop_func();
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

void operator_func() {
  int num = 10 + 20;
  num = num - 2;
  print(num);

  num = num % 5;
  print(num);

  // relational ==, !=, >=, <=
  if (num == 0) {
    print('zero');
  }

  num = 100;
  num += 2;
  print(num);

  // unary operator
  ++num;
  num++;
  num += 1;
  num -= 1;
  print(num);

  // logical && and logical ||
  if (num > 200 && num < 203) {
    print('200 to 203');
  }

  // != not equal
  if (num != 100) {
    print('num is not equal to 100');
  }

  // ternary operator
  int x = 100;
  var result = x % 2 == 0 ? 'Even' : 'Odd';
  print(result);
}

class Num {
  int num = 10;
}

void null_aware_operator_func() {
  // var n = Num(); //n is object of Num class.class object is called in this way
  var n;
  var number;

  if (n != null) {
    number = n.num;
  }

  // another simple way to null aware is
  number = n?.num ?? 5;
  print(number);

  // (??=) if the variable is null then it will assigned to default value
  // var number2 = 5;
  var number2;
  print(number2 ??= 100);
  print(number2);
}

void typeTest_func() {
  var x = 100.1;
  if (x is int) {
    print('integer');
  } else if (x is double) {
    print('double');
  }
}

void conditional_func() {
  int number = 0;
  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('odd');
      break;
    case 2:
      print('even');
      break;
    default:
      print('confused');
      break;
  }
}

void printNum(num) {
  print(num);
}

void loop_func() {
  //standard  for loop
  for (var i = 1; i <= 3; ++i) {
    print(i);
  }
  print('');

  // for-in loop
  var numbers = [1, 2, 3]; // this is array

  for (var n in numbers) {
    print(n);
  }
  print('');

  // another way
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  print('');

  //forEach loop
  var numbers2 = [1, 2, 3];
  numbers2.forEach((n) => print(n)); // (n) => print(n) this arrow function

  // another way without arrow function
  numbers2.forEach(printNum);
  print('');

  // while loop
  int num = 3;
  while (num > 0) {
    print(num);
    num -= 1;
  }

  // do while loop
  do {
    print(num);
    num -= 1;
  } while (num > 0);
}

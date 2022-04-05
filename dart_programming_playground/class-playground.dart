// this is dart playground for Class
// Tutorial link: https://www.youtube.com/watch?v=Ej_Pcr4uC2Q
// freeCodeCamp.org :: Dart programming tutorial - Full Course

import 'dart:io'; // input output

// Class

class Person {
  String name = "";
  int age = 0;

  /*
  lets define constructor
  constructor is also one kind of method
  but does not have any return type
  */

  //constructor
  //age is optional and default val 18

  // Person(String name, [int age = 18]) {
  //   this.name = name;
  //   this.age = age;
  // }

  // shortcut way of constructor
  Person(this.name, [this.age = 18]);

  /* 
  if you define other constructor besids the default constructor
  is called named constructor 
  */

  //named constructor
  Person.guest() {
    name = 'Guest';
    age = 30;
  }

  /*
  lets define a method
  when you define a function within a class that is called method
  */

  void showOutput() {
    print("person name is $name");
    print("person age is $age");
  }
}

/* --------- Inheritance class ------------- */
/*
when we define a class later we want  to add some feature within the class,
but that extra featue is not required for all the instance of original class,
then we can use class inheritance.

in dart program using "extends" keyword you can inherit a class
"super" is another keyword used in class inheritance
this is example of inherit super class to sub class
*/

class Vehicle {
  String model = '';
  int year;

  Vehicle(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(model);
    print(year);
  }
}

class Car extends Vehicle {
  double price;

  Car(String model, int year, this.price) : super(model, year);

  void showOutput() {
    super.showOutput();
    print(this.price);
  }
}

/* --------------- Getters and Setters ------------------------------*/

class Rectangle {
  num left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom
  num get right => left + width;
  set right(num value) => left = value - width;

  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void main() {
  // lets create an object of Person class
  // Person person1 = Person('mahmudul islam');
  Person person1 = Person('mahmudul islam', 24);

  // person1.name = 'mahmud';
  // person1.age = 24;
  person1.showOutput();

  //lets create another object
  var person2 = Person('jack', 25);
  person2.showOutput();

  //lets create another object
  var person3 = Person.guest();
  person3.showOutput();

  /* class inheritance */
  var car1 = Car('Accord', 2014, 1500000);
  car1.showOutput();

  /* getters and setters */

  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);
  rect.right = 12;
  print(rect.left);
}

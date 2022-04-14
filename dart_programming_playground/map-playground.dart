void main() {
  map_func1();
  Map_func2();
}

void map_func1() {
  // map function

  // Double the all numbers in the list and print it
  List<int> numbers = [4, 53, 135, 7264];
  var powNumbers = numbers.map((num) => num * 2);
  print(powNumbers);

  //print the length of each name
  List<String> names = ['Max', 'Ed', 'Mahmud', 'peter'];
  var lengthName = names.map((name) => name.length);
  print(lengthName);
}

Map_func2() {
  /// Map is like
  /// Object literal in javascripts
  /// dictionary in python

  Map student = {'name': 'mahmud', 'age': 26};
  print(student['name']);
  print(student['age']);
  print(student);
}

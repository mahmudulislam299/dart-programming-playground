void main() {
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

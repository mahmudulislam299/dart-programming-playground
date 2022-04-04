void main() {
  print('this is a practice playground');
  loop_func();
}

void loop_func() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  print('okay');

  var numbers = [1, 3, 5, 7, 9];
  for (var n in numbers) {
    print(n);
  }

  numbers.forEach(printNumber);
}

void printNumber(var n) {
  print(n);
}

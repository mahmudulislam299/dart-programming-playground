void main() {
  print('this is a practice playground');
  loop_func();
  list_func();
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

void list_func() {
  List<String> name = ['mahmudul', 'islam'];
  for (var n in name) {
    print(n);
  }

  for (int i = 0; i < name.length; i++) {
    print(name[i]);
  }

  var name2 = name; // this is not copying ;
  //name and name2 is pointing to same variavle
  var name3 = [...name]; // this is copying
  name2[1] = 'hasan';
  name3[1] = 'haque';
  print(name[1]);

  var gift = {'first': 'meherab', 'second': 'arpon'};

  print(gift);
  print(gift['first']);

  var roll = {1: 'mahmudul', 2: 'islam', 3: 'robince'};
  print(roll);
  print(roll[1]);
}

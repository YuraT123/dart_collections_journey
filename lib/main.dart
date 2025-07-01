import 'dart:math';

void main() {
  print(' Домашне завдання номер 8');
  print(' ------------Завдання номер 1------');
  runTask1();
}

void runTask1() {
  var number = List.generate(100, (_) => Random().nextInt(101));
  print(number);
  print('65-й елемент: ${number[64]}');
  number.insert(49, 1000000000);
  print('Список після вставки 1000000000 на 50-ту позицію:');
  print(number);
  print('Довжина списка: ${number.length}');
  number.removeWhere(
    (element) =>
        element == 24 || element == 45 || element == 66 || element == 88,
  );
  print('Довжина списка: ${number.length}');

  var sum = 0;
  for (var i = 0; i < number.length; i++) {
    if (number[i] % 3 == 0) {
      sum += number[i];
    }
  }
  print('Сума чисел, кратних 3: $sum');

  var temp = <int>[];
  for (var value in number) {
    if (value % 2 == 0) {
      temp.add(value);
    }
  }
  print('Довжина списка: ${temp.length}');
  
}

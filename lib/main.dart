import 'dart:math';
import 'names.dart';

void main() {
  print(' Домашне завдання номер 8');
  print(' ------------Завдання номер 1------');
  runTask1();
  print(' ------------Завдання номер 2------');
  runTask2();
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

void runTask2() {
  var uniqueNames1 = Set.from(ukrainianNames1);
  var uniqueNames2 = Set.from(ukrainianNames2);
  var commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Спільні імена: $commonNames');
  print('Кількість спільних імен: ${commonNames.length}');
  var onlyInFirst = uniqueNames1.difference(uniqueNames2);
  print('Імена, які є лише в першому списку: $onlyInFirst');
  var onlyInSecond = uniqueNames2.difference(uniqueNames1);
  print('Імена, які є лише в другому списку: $onlyInSecond');


}

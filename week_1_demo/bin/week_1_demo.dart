import 'dart:io';
import 'package:week_1_demo/week_1_demo.dart';
import 'package:week_1_demo/person.dart';

void main(List<String> arguments) {
  String name = prompt('Enter your name: ');

  int age = promptAge('Enter you age: ');

  Person person = Person(name, age);
  stdout.writeln('Hello ${person.name}. How does it feel to be ${person.age} years old?');
}

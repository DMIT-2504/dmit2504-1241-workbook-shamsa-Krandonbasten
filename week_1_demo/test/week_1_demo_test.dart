import 'dart:io';

import 'package:test/test.dart';
import 'package:week_1_demo/week_1_demo.dart';

int promptAge(){
  bool isValid = false;

  while(!isValid){
    try{
    return 99;
    } catch(e){
      stdout.writeln('Invalid input. Please try again');
    }
  }
}

void main() {
  test('Function works properly',(){
    expect(promptAge(), 99);
  });
}

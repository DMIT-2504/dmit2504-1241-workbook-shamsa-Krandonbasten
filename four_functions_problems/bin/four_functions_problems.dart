import 'dart:io';

import 'package:four_functions_problems/four_functions_problems.dart' as four_functions_problems;

void main(List<String> arguments) {

print('Enter number of pennies:');
int pennies = validateInput();

print('Enter number of nickles:');
int nickles = validateInput();

print('Enter number of dimes:');
int dimes = validateInput();

print('Enter number of quarters:');
int quarters = validateInput();

print('Enter number of loonies:');
int loonies = validateInput();

print('Enter number of twoonies:');
int twoonies = validateInput();

double total = getTotal(pennies,nickles,dimes,quarters,loonies,twoonies);
print('total value is $total');

}

double getTotal(int pennies, int nickles, int dimes, int quarters, int loonies, int twoonies){
  const double penny = 0.01;
  const double nickle = 0.05;
  const double dime = 0.10;
  const double quarter = 0.25;
  const double loonie = 1.0;
  const double twoonie = 2.0;

  double totalValue = (pennies*penny)+(nickles*nickle)+(dimes*dime)+(quarters*quarter)+(loonies*loonie)+(twoonies*twoonie);
  return totalValue;
}


int validateInput(){
  int? value;
  while(true){
    String? input = stdin.readLineSync();
    value = int.tryParse(input!);

    if(value != null && value >= 0){
      return value;
    } else {
      print('Please enter a valid positive integer');
    }
  }
}
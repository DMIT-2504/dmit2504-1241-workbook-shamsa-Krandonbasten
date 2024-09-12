import 'package:array_problem_one/array_problem_one.dart' as array_problem_one;
import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {
print('Enter desired number of lottery numbers');
int numOfValues = int.parse(stdin.readLineSync()!);

print('Enter the range of values for the lottery numbers ');
int range = int.parse(stdin.readLineSync()!);

List<int> lotteryTicket = generateTicket(numOfValues, range);

print(lotteryTicket);
}

List<int> generateTicket(int values, int range){
  Random random = Random();
  Set<int> ticketSet = {};

  while(ticketSet.length < values ){
    int randValue = random.nextInt(range) + 1;
    ticketSet.add(randValue);
  }

  return ticketSet.toList();

}

/*
  Remember that dreaded while loop? Let's revisit that bugger again!

  Before we get into the pain of while loop, copy the functions
  getInt and getYesNo here so we can make use of your beautiful functions :)

  Now, I've already done the heavy work (Thank you Adam) and implemented the
  loop for you. I want YOU to

  1. Use the getYesNo method and ask the user if we should 'Stop?'.
     The output from that should be assigned to the continueRunning variable.
  2. Ask the user to give us a number, add that number to the myNumbers list.


 */


import 'dart:io';

int getInt(String prompt){
  print(prompt);
  return int.parse(stdin.readLineSync());
}

bool  getYesNo(String prompt){
  print(prompt);
  bool ans;
  while (ans == null ){
    String userAns = stdin.readLineSync();
    print(prompt);
    if (userAns.toLowerCase() == 'yes'){
      ans = true;
    } else if (userAns.toLowerCase() == 'no'){
      ans = false;
    }
  }
  return ans;
}
void main() {
  print('Hello human, I need some numbers.');
  bool continueRunning = true;
  List<int> myNumbers = [];
  while(continueRunning) {
    int nextNumber = getInt('Enter next number? ');
    myNumbers.add(nextNumber);
    continueRunning = getYesNo('Continue?');
  }
  print('The numbers you gave me were: $myNumbers');
}
/*
Hello human, I need some numbers.
Enter next number?
10
Continue?
d
Continue?
yes
Continue?
Enter next number?
20
Continue?

Continue?

Continue?
no
Continue?
The numbers you gave me were: [10, 20]
*/

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

String getString(String prompt){
  print(prompt);
  return stdin.readLineSync();
}


bool  getYesNo(String prompt){
  //print(prompt);
  bool ans;
  while (ans == null ){
    String userAns = getString(prompt);
    if (userAns.toLowerCase() == 'yes'){
      ans = true;
    } else if (userAns.toLowerCase() == 'no'){
      ans = false;
    }
    return ans;
  }
}
List<int> getIntList(String prompt){
  print(prompt);
  List<int> myNumbers = [];
  while(!getYesNo('Stop?')) {
    //int nextNumber = getInt('Enter next number? ');
    myNumbers.add(getInt('Next number'));
  }
  return myNumbers;
}
void main() {
  List<int> yourListNumbers = getIntList('Give me some numbers! ');
  print('After running your function I got $yourListNumbers');
}
/*

Give me some numbers! 
Stop?
no
Next number
10
Stop?
no
Next number
11
Stop?
yes
After running your function I got [10, 11]
*/

/*
  Excellent!

  But what about some kind of Yes/No statement? Let's break that down a little
  before we tackle the function.

  Can you edit the code below, so that the following inputs will change
  the value of the bool ans variable.

  'Yes', 'yes'  ---> ans is true
  'No', 'no'  ---> ans is false
  Anything else ---> ans is null

  HINT:
    When you define a variable like this
      bool ans;
    That variable is ALREADY null! :)


 */


import 'dart:io';

void main() {
  String userAns = stdin.readLineSync().toLowerCase;
  bool ans;
  if(userAns == 'yes'){
    ans = true;
  } else if(userAns == 'no'){
    ans = false;
  }
  print('User put in $userAns, bool is now $ans');
}
/*
Using while loop to ask user until he enter yes or no:

import 'dart:io';
bool getYesNo(String prompt){
  print(prompt);
  bool ans;
  while (ans == null){
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
  bool output = getYesNo('Are whales mammals?');
  print('Are whales mammals? : Answer $output');
}
*/

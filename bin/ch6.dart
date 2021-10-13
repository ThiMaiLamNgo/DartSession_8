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
  String userAns = stdin.readLineSync();
  bool ans;
  // Your code here


  // Your code here
  print('User put in $userAns, bool is now $ans');
}
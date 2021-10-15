/*
  Nice!

  Now, can you package the solution from ch6 into a function? The function
  should behave in the same way as getString, getDouble, getInt, ie it should
  accept a custom string that will be printed.

  But this time, the output type is not int/double or String, can you figure
  out the output type of this new function as well?

  I've created the skeleton of this function for you down below, but you
  need to change void to the appropriate type.


 */

import 'dart:io';
bool getYesNo(String prompt){
  print(prompt);
  String userAns = stdin.readLineSync();
  bool ans;
  if (userAns.toLowerCase() == 'yes'){
    ans = true;
  } else if (userAns.toLowerCase() == 'no'){
    ans = false;
  }
  return ans;
}
void main() {
  // You should see an error here before you edit getYesNo, can you see why?
  bool output = getYesNo('Are whales mammals?');
  print('Are whales mammals? : Answer $output');
}
/*
Calling challenge5.dart to this challenge and using while loop to ask user until he enters yes or no:
import 'dart:io';
import 'challenge5.dart';
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
void main(){
  bool output = getYesNo('Are whales mammals?');
  print('Answer $output');
}
/* challenge5.dart 
import 'dart:io';
double getDouble(String prompt){
  return double.parse(getString(prompt));
}
int getInt(String prompt){
  print(prompt);
  return int.parse(stdin.readLineSync());
}
String getString(String prompt){
  print(prompt);
  return stdin.readLineSync();
}

void main(){
  bool output = getYesNo('Are whales mammals?');
  print('Answer $output');
}

*/

*/

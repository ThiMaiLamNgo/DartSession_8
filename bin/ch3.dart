/*
  Copy the function printString from ch2.dart and paste it below main()

  Create a function called getName().
  It should have the following characteristics

  1. Returns a String
  2. No input
  (Sounds like a giver)

  Inside this function, ask the user for his name and return the name of the
  user.

  In main, call the getName() function, capture the output and use that output as
  an input into the printString function.

 */

void main() {
  String name = getName();
  print("Hello $name");
  }

// Create getName here
String getName(){
  print("What is your name?");
  String userName = stdin.readLineSync();
  return userName;
}

// Paste printString() here
 String printString( String printThis){
  print(printThis);
  return  stdin.readLineSync();
}

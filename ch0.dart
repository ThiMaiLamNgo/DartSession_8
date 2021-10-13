/*
  Well well, let's get some functions going!

  TYPE FUNCTION(INPUTS){
    CODE
  }

  Let's break down the function syntax, when you create a function, you first
  ask yourself these two questions

  1. WHAT exactly should this function return? I.e, what datatype. For example,
     a function that should return the number 10 would be a type int. If the
     function should not return anything, you can specify if as void.

     Functions can return ALL the types you've learned about (and more).
     int, double, String, bool, List<int>, List<double>, List<String>, List<bool>

  2. Next, think about WHAT DOES THIS FUNCTION NEED? I.e, do you need to provide
     the function for it to run. Like, a function that should multiply two
     numbers together needs... well... two numbers right? Some function don't
     even require an input!

     Once you've figured out what the function needs, you define the INPUT to it.
     You can think of the input as "Gatekeepers" they will make sure that nobody
     allowed parameters are allowed inside the holy church of the function.

  Challenge:

  Down below there is a main method and greeting method. Ask the user to input
  his name and store the name in the userName variable. Then execute the
  greeting method, using the variable userName as input.

 */

void main() {
  String userName;
}

void greeting(String name) {
  print('Welcome to the world of functions, $name!');
}



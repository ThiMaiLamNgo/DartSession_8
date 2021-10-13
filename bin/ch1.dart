/*
    Here are examples of 4 different variants of a function

  1. The loner, a function that returns nothing and needs nothing

        void loner(){
          print('Leave me alone!');
        }

  2. The giver, a function that needs nothing, but still returns something

        int giver(){
          int money = 100;
          return money;
        }

  3. The taker, a function that needs something, but returns nothing

        void taker(int money){
          print('Thanks for the $money dollars! Now bugger off!');
        }

  4. The sharer, a function that takes something but also returns something

        double sharer(int money){
          return money / 2;
        }

  Use them / execute them here in the main method. We sometimes refer this to
  "calling". So, call them in the main method.

  Try running the program after each step.

  1. Call the loner function
  2. Call the giver function AND capture the OUTPUT from that function into
     the appropriate variable.
  3. Take the output from the giver function and call the taker function using
     the output from giver as an INPUT to the taker function.
  4. Take the output from the giver function and call the sharer function.

 */


void main() {

}


void loner(){
  print('Leave me alone!');
}

int giver(){
  int money = 100;
  return money;
}

void taker(int money){
  print('Thanks for the $money dollars! Now bugger off!');
}

double sharer(int money){
  return money / 2;
}
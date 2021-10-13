/*
  META FUNCTION

  Let's get tricky now. The human now wants to choose what calculation to
  perform using the terminal, sometimes he only wants the volume of a sphere
  not the area of a circle. So let's give him that possibility.

  After the for loop down there, ask the user to input a integer (Maybe we
  have a function for that?) and based on the integer, run the appropriate
  function that you have defined in ch13 (Copy them over of course).

  BONUS CHALLENGE 1:
  Can you create a function, that accepts for example a list like the one below
  called methods, and prints the available options like is done in main now?

  BONUS CHALLENGE 2:
  Can you make the function from Bonus Challenge 1 even better, and make it
  return the choice of the user, ie, the number he chooses?

  MEGA BONUS 3:
  I shouldn't be doing this, but what the heck.... did you know, that you can
  return a FUNCTION as an output from a function? Can you adjust the function
  from Bonus Challenge 2 so that it accepts both a list of strings AND a list
  of functions? Then it returns the FUNCTION the user wanted? ....I lost you
  now didn't I? :D

 */


void main() {
  print('Methods available');
  List<String> methods = ['Circumference', 'Circle area', 'Sphere volume'];
  int count = 0;
  for(String method in methods){  // Remember this for loop? It's awesome
    print('[$count] $method');
    count++;
  }

  // Ask user what he wants to do, then print the answer.

}

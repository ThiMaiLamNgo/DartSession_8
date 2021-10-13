/*
  Now, what if we need to return multiple values? This is where Lists come
  handy (And other data types... but we haven't covered them yet!)

  Edit the code below, but instead of returning a single String, make it return
  a LIST of strings! (List<String>)

  Add some places to the "places" variable so BurgerKing doesn't get lonely :)

 */


String fastFood(){
  String places = 'BurgerKing';
  return places;
}

void main() {
  print('I know many restaurants, like ${fastFood()}');
}
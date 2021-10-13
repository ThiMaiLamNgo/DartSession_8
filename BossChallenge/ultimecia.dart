/*
  Let's create a simple RPG.

  This challenge is rather simple compared to the past challenges... but...
  it is at least a real boss-challenge! :)

  Once you're done, feel free to look at the dont_look_at_me.dart.
  It's ugly but.. that would be your first glimpse at a CLASS! More on that
  in later sessions....

  Feel free to change the classes as well if you are feeling adventurous. For
  example... add a HP status when damage is taken?

*/
import 'stop/really/dont/look/finish/challenge/first/dont_look_at_me.dart';

void main() {
  // ALLOW THE USER TO SET THESE VIA TERMINAL
  String name = 'Adam';
  int baseMagic = 50;
  int baseUnArmed = 20;
  int baseWeapon = 7;

  // ################### DONT CHANGE #####################
  TheBoss ultimecia = TheBoss();
  // Here are your available damage types (user selects from these)
  List<String> damageTypes = ['weapon', 'unarmed', 'magic'];
  int round = 0;
  ThePlayer player = ThePlayer(
      name: name,
      baseMagic: baseMagic,
      baseUnArmed: baseUnArmed,
      baseWeapon: baseWeapon
  );
  // ######################################################

  while (!player.isDead() && !ultimecia.isDead()){
    print('\n\nRound #$round');
    // Add code where the user chooses what damageType to attack with
    // By default, it simply always unarmed..
    String playerAttackType = 'unarmed';


    //############### Dont change #################
    int playerDamage = player.attack(playerAttackType);
    ultimecia.defend(playerDamage, playerAttackType);

    int bossDamage = ultimecia.attack();
    String bossAttackType = ultimecia.damageType();
    //##############################################

    // Choose what attack the player will attempt to defend against
    // If you try to defend, you will have to wait one turn. If you are not
    // going to defend, set the value as an empty string ''
    String playerDefenceType = 'unarmed';


    //############### Dont change #################
    player.defend(bossDamage, bossAttackType, playerDefenceType);
    round++;
    //##############################################
  }


}

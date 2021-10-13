import 'dart:math';

class TheBoss {
  int hp = 100;

  static int baseWeapon = 5;
  static int baseUnArmed = 1;
  static int baseMagic = 25;

  List<String> damageTypes = ['weapon', 'unarmed', 'magic'];
  List<int> baseDamages = [baseWeapon, baseUnArmed, baseMagic];
  final _random = new Random();
  int lastRandomIdx = 0;

  void defend(int damage, String damageType){
    String blocks = damageTypes[_random.nextInt(damageTypes.length)];
    if(blocks == damageType){
      print('Ultimecia blocked $damage damage');
    } else {
      print('Ultimecia took $damage damage');
      hp -= damage;
    }
  }

  int attack(){
    return _randomDamage(baseDamages[lastRandomIdx]);
  }

  String damageType() {
    String type = damageTypes[lastRandomIdx];

    switch (lastRandomIdx) {
      case 0:
        print('Ultimecia looks at you with contempt');
        print('She screams, "You are an insect!!!!"');
        break;
      case 1:
        print('Ultimecia laughs');
        print('You are not even worth my time! HAH!');
        break;
      case 2:
        print('Ultimecia looks serious and starts chanting...');
        break;
    }

    _randomize();
    return type;
  }

  bool isDead(){
    bool dead = hp <= 0;
    if(dead){
      print('Ultimecia exploded into blood and bones.');
    }
    return dead;
  }

  int _randomDamage(int baseDamage){
    if(baseDamage == 0){
      return 0;
    }
    return _random.nextInt(baseDamage);
  }

  void _randomize(){
    lastRandomIdx = _random.nextInt(damageTypes.length);
  }

}

class ThePlayer {
  String name;
  int baseWeapon;
  int baseUnArmed;
  int baseMagic;

  ThePlayer({this.name, this.baseWeapon, this.baseUnArmed, this.baseMagic});
  final _random = new Random();
  int hp = 100;
  bool defencive = false;
  List<String> damageTypes = ['weapon', 'unarmed', 'magic', ''];

  List<int> _getBaseDamages() {
    return [baseWeapon, baseUnArmed, baseMagic, 0];
  }

  void defend(int damageAmount, String damageType, String defenceType){
    if(defenceType == damageType){
      print('$name sucessfully defended against $damageAmount of damage!');
    } else {
      print('$name takes $damageAmount damage, straight into the face');
      hp -= damageAmount;
    }
  }

  int attack(String damageType){
    int idx = damageTypes.indexOf(damageType);
    idx = idx == -1 ? 1 : idx;
    int gain = 1;

    if(defencive){
      print('$name is tired from all the defending.. his attack is weaker');
      resetDefence();
    }

    switch (idx) {
      case 0:
        print('$name swings his weapon at Ultimecia!');
        break;
      case 1:
        print('$name tries to use his great strength to punch Ultimecia!');
        break;
      case 2:
        print('$name uses his arcane magic against Ultimecia!');
        break;
      case 3:
        print('$name laughs and says "I aint afraid!!"');
        defencive = true;
        break;
    }
    return _randomDamage(_getBaseDamages()[idx]) ~/ gain;
  }

  bool isDead(){
    bool dead = hp <= 0;
    if(dead){
      print('$name died a gruesome death and the world was destroyed.');
    }
    return dead;
  }

  int _randomDamage(int baseDamage){
    return _random.nextInt(baseDamage);
  }

  void resetDefence(){
    defencive = false;
  }

}
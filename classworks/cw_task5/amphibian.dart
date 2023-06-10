import 'reptile.dart';

class Amphibian extends Reptile{
  bool isJump;

  Amphibian(super.name, super.isCarnivore, super.isHerbivore, super.type, super.ispoisonous, this.isJump);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Can Jumps?: ${isJump ? 'Yes' : 'No'}");
  }
}

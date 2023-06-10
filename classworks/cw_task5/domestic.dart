import 'mammal.dart';

class Domestic extends Mammal{
  int footCount;

  Domestic(super.name, super.isCarnivore, super.isHerbivore, super.type, super.age, this.footCount);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Foot Count: $footCount");
  }
}

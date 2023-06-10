import 'reptile.dart';

class Aquatic extends Reptile{
  String habitation;

  Aquatic(super.name, super.isCarnivore, super.isHerbivore, super.type, super.ispoisonous, this.habitation);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Habitation: $habitation");
  }
}

import 'animal.dart';

class Reptile extends Animal{
  String type;
  bool ispoisonous;

  Reptile(super.name, super.isCarnivore, super.isHerbivore, this.type, this.ispoisonous);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Type: $type \nPoisonous?: ${ispoisonous ? 'Yes' : 'No'} ");
  }
}

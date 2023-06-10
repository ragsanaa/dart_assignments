import 'animal.dart';

class Bird extends Animal{
  String type;
  double wings_length;

  Bird(super.name, super.isCarnivore, super.isHerbivore, this.type, this.wings_length);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Type: $type \nWings length: $wings_length cm");
  }
}

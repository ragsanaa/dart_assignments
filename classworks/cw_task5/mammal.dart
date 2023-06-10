import 'animal.dart';

class Mammal extends Animal{
  String type;
  double age;

  Mammal(super.name, super.isCarnivore, super.isHerbivore, this.type, this.age);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Type: $type \nAge: $age");
  }
}

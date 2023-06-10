import 'mammal.dart';

class Wild extends Mammal{
  String location;

  Wild(super.name, super.isCarnivore, super.isHerbivore, super.type, super.age, this.location);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Location: $location");
  }
}

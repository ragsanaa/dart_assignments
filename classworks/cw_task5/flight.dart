import 'bird.dart';

class Flight extends Bird{
  bool isFlock;

  Flight(super.name, super.isCarnivore, super.isHerbivore, super.type, super.wings_length, this.isFlock);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Live with Flock: ${isFlock ? 'Yes' : 'No'}");
  }
}

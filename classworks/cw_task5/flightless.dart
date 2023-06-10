import 'bird.dart';

class Flightless extends Bird{
  bool isSwim;

  Flightless(super.name, super.isCarnivore, super.isHerbivore, super.type, super.wings_length, this.isSwim);

  @override
  void displayInfo() {
    super.displayInfo();
    print("Is Swim: ${isSwim ? 'Yes' : 'No'}");
  }
}

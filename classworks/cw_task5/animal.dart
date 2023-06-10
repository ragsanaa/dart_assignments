List<String> herbivoreAnimals = [];
  List<String> carnivoreAnimals = [];

class Animal{
  String name;
  bool isHerbivore;
  bool isCarnivore;

  Animal(this.name, this.isCarnivore, this.isHerbivore){
    if(isCarnivore) carnivoreAnimals.add(name);
    if(isHerbivore) herbivoreAnimals.add(name);
  }

  void displayInfo(){
    print("Name: $name \nIs Carnivore: $isCarnivore \nIs Herbivore: $isHerbivore");
  }

  void getHernivores(){
    herbivoreAnimals.forEach((element) {print(element);});
  }

  void getCarnivores(){
    carnivoreAnimals.forEach((element) {print(element);});
  }
}

class Car {
  String model;
  String color;
  int year;
  int speed = 0;
  Car({
    required this.model,
    required this.color,
    required this.year,
    required this.speed,
  });

  void display(){
    print("Model: $model, Color: $color, Year: $year, Speed: $speed");
  }

  void accelerate(){
    speed+=20;
  }
}

class Truck extends Car {
  double maxWeight;
  double totalWeight = 0;

  Truck({
    required String model,
    required String color,
    required int year,
    required int speed,
    required this.maxWeight,
  }) : super(model: model, color: color, year: year, speed: speed);

  void load(double weight) {
    if (weight <= maxWeight) {
      totalWeight += weight;
      print("Truck loaded: $weight \n Total weight: $totalWeight");
    } else {
      print("You need a bigger truck");
    }
  }
}

class Bus extends Car {
  int maxPassengers;
  int totalPassanger = 0;
  Bus({
    required String model,
    required String color,
    required int year,
    required int speed,
    required this.maxPassengers,
  }) : super(model: model, color: color, year: year, speed: speed);

  void getPassanger(int passengerCount){
    if (passengerCount <= maxPassengers) {
      totalPassanger+=passengerCount;
      print("Bus took new passanger: $passengerCount \n Total Passanger: $totalPassanger");
    } else {
      print("You need a bigger bus");
    }
  }
}

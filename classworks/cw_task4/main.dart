import 'car.dart';

void main(List<String> args) {
  Bus bus = Bus(model: "Mercedes", color: "White", year: 2010, speed: 0, maxPassengers: 50);
  Truck truck = Truck(model: "Volvo", color: "Grey", year: 2020, speed: 100, maxWeight: 44000);

  bus.display();
  truck.display();

  truck.load(10000);
  bus.getPassanger(10);
}

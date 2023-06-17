import 'classes.dart';

void main(List<String> args) {
  Car car1 = Car(brand: "Toyoto", model: "Camry", type: VeichleType.Sedan.name, passengerCapacity: 4, rentPrice: 200);
  Car car2 = Car(brand: "Volkswagen", model: "Polo", type: VeichleType.SUV.name, passengerCapacity: 4, rentPrice: 150);

  car1.rent();
  car1.returnVeichle();
  print("\n");
  car2.rent(35);
}

abstract class Rentable{
  void rent([int discount = 0]);
  void returnVeichle();
}

enum VeichleType{
  Commercial, Coupe, Hatchback, Sedan, Sport, SUV, Motorcycle
}

class Veichle implements Rentable {
  String brand;
  String model;
  String type;
  Veichle({
    required this.brand,
    required this.model,
    required this.type,
  });

  @override
  void rent([int discount = 0]) {
    print("Vehichle rented: $brand $model");
  }

  @override
  void returnVeichle() {
    print("Vehichle returned: $brand $model");
  }
}

mixin Discountable{
  double calculateDiscountedPrice(double price, int discount){
    return price * (1 - discount/100);
  }
}

class Car extends Veichle with Discountable {
  int passengerCapacity;
  double rentPrice;
  Car({
    required super.brand,
    required super.model,
    required super.type,
    required this.passengerCapacity,
    required this.rentPrice
  });

  @override
  void rent([int discount = 0]) {
    super.rent();
    print("Original price: $rentPrice\$");
    if(discount > 0){
      double discountedPrice = calculateDiscountedPrice(rentPrice, discount);
      print("Discounted price: $discountedPrice\$");
    }
  }
}

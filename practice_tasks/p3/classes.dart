class FoodItem {
  String name;
  double price;
  FoodItem({
    required this.name,
    required this.price,
  });
}

class OrderingSystem <T extends FoodItem>{
  List<T> orders = [];

  void addItem(T order){
    orders.add(order);
  }

  // void removeItem(T order){
  //   orders.remove(order);
  // }

  void removeItems(String orderName){
    String name = orderName.toLowerCase();
    for(int i=0;i<orders.length; i++){
      if(orders[i].name.toLowerCase() == name){
        orders.remove(orders[i]);
        i--;
      }
    }
  }

  double calculateTotalCost(){
    double totalCost = 0;
    for (FoodItem food in orders) {
      totalCost += food.price;
    }
    return totalCost;
  }
}

class Appetizer extends FoodItem {
  String description;
  Appetizer({
    required super.name,
    required super.price,
    required this.description,
  });
}

class MainCourse extends FoodItem {
  String ingredients;
  MainCourse({
    required super.name,
    required super.price,
    required this.ingredients,
  });
}

class Dessert extends FoodItem {
  bool isSweet;
  Dessert({
    required super.name,
    required super.price,
    required this.isSweet,
  });
}

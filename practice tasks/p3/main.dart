// Restorant Order App
import 'classes.dart';

void main(List<String> args) {
  OrderingSystem orders = OrderingSystem();
  orders.addItem(Appetizer(name: "Meze", price: 30.49, description: "an appetizer in Greek or Middle Eastern cuisine often served with an aperitif"));
  orders.addItem(Appetizer(name: "Canapé", price: 50.99, description: "an appetizer consisting of a piece of bread or toast or a cracker topped with a savory spread (such as caviar or cheese)"));

  orders.addItem(MainCourse(name: "BUTTER CHICKEN", price: 15.67, ingredients: "3-4 Chicken Breasts/ Thighs boneless, 1 Tbsp Ginger-Garlic paste, 2 tsp Chili Powder Kashmiri Chilli or a mix of Cayenne & Paprika, 2 Tbsp Greek Yogurt plain, 1 Lime juiced, Salt to taste"));
  orders.addItem(MainCourse(name: "SPICY PORK VINDALOO", price: 29, ingredients: "2 lbs Pork (rib meat or shoulder), cubed, 6-8 Baby potatoes, halved, 1/4 cup oil, Salt to taste"));

  orders.addItem(Dessert(name: "Tiramisu", price: 24.5, isSweet: true));
  orders.addItem(Dessert(name: "Sour Cream Raisin Bars.", price: 16.90, isSweet: false));

  displayOrders(orders);
  double cost = orders.calculateTotalCost();
  print("Total cost of the order: ${cost.toStringAsFixed(2)}");

  orders.removeItems("SPICY PORK VINDALOO");
  print("\nAfter remove order\n");
  
  displayOrders(orders);
  cost = orders.calculateTotalCost();
  print("Total cost of the order: ${cost.toStringAsFixed(2)}");
}

void displayOrders(OrderingSystem orderList){
  for (FoodItem food in orderList.orders) {
    print("Name: ${food.name} \n\tPrice: ${food.price}\n");
  }
}

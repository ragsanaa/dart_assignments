import 'amphibian.dart';
import 'aquatic.dart';
import 'domestic.dart';
import 'flight.dart';
import 'flightless.dart';
import 'wild.dart';

void main(List<String> args) {
  //Mammals
  Wild wild = Wild("Lion", true, false, "Predator", 3, "Safari");
  Domestic domestic = Domestic("Camel", false, true, "Bactrian", 2, 4);

  //Bird
  Flight flight = Flight("Eagle", true, false, "Golden", 90, false);
  Flightless flightless = Flightless("Penguin", true, false, "Emperor", 76, true);

  //Reptile
  Aquatic aquatic = Aquatic("Laticauda", true, false, "Sea Snake", false, "Ocean");
  Amphibian amphibian = Amphibian("Allogator", true, false, "American", false, false);


  wild.displayInfo();
  print('');
  domestic.displayInfo();
  print('');
  flight.displayInfo();
  print('');
  flightless.displayInfo();
  print('');
  aquatic.displayInfo();
  print('');
  amphibian.displayInfo();
  print('');

  print("Carnivores:");
  wild.getCarnivores();
  print("Hernivores:");
  wild.getHernivores();
}

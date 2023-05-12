main(){
  List<int> list = List.generate(10, (index) => index * 2);
  list.shuffle();
  print("List 1: $list");
  List<int> list2 = List.generate(6, (index) => index + 2);
  list2.shuffle();
  print("List 2: $list2");

  List<int> list3 = list + list2; // List<int> list3 = [...list, ...list2];
  print("List 3: $list3");
  list3.sort();
  print("Sorted list 3: $list3");
}

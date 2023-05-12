main(){
  List<int> mixedList = [1, 2, 3, 4, 5, 2, 6, 7, 8, 3, 9, 5];
  print("List before removing duplicates: $mixedList");
  mixedList.sort();
  for(int i = 0; i < mixedList.length - 1; i++){
    if(mixedList[i] == mixedList[i + 1]){
      mixedList.removeAt(i);
    }
  }
  print("List after removing duplicates: $mixedList");
  print("The second largest number in the list: ${mixedList[mixedList.length - 2]}");
  print("From largest to smallest: ${mixedList.reversed.toList()}");
}

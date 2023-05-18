import 'dart:io';

void main(){
  List<int> mixedList = [1, 3, 5, 4, 5];

  int max = 0;
  int secondMax = 0;

  for (int i = 0; i < mixedList.length; i++) {
    // if(mixedList[i] > max) {
    //   secondMax = max;
    //   max = mixedList[i];
    //   stdout.write("\nindex: " + i.toString()+ "\nSeconmax: " + secondMax.toString() + "\nmax: " + max.toString());

    // } else if(secondMax < mixedList[i] && max != mixedList[i]) {
    //   secondMax = mixedList[i];
    // }

    if(mixedList[i] > max) {
      secondMax = max;
      max = mixedList[i];
    } else if(mixedList[i] < max){
      if(mixedList[i] > secondMax){
        secondMax = mixedList[i];
      }
    }
  }
  print("\n" + secondMax.toString());


  // print("List before removing duplicates: $mixedList");
  // mixedList.sort();
  // for(int i = 0; i < mixedList.length - 1; i++){
  //   if(mixedList[i] == mixedList[i + 1]){
  //     mixedList.removeAt(i);
  //   }
  // }
  // print("List after removing duplicates: $mixedList");
  // print("The second largest number in the list: ${mixedList[mixedList.length - 2]}");
  // print("From largest to smallest: ${mixedList.reversed.toList()}");
}

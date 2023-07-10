main(){
  List<int> numbers = [12, 4, 5, 23, 9, 21, 7, 8, 10, 3];

  findMax(numbers);
  findMin(numbers);
  sumNumbers(numbers);
  findMean(numbers);
}

void findMax(List<int> numbers){
  int max = numbers[0];
  for(int i=0; i<numbers.length; i++){
    if(numbers[i] > max) max = numbers[i];
  }
  print("Max number is: $max");
}

void findMin(List<int> numbers){
  int min = numbers.reduce((value, element) => value < element ? value : element);
  print("Min number is: $min");
}

void sumNumbers(List<int> numbers){
  int sum = 0;
  for(int num in numbers){
    sum += num;
  }
  print("Sum of numbers is: $sum");
}

void findMean(List<int> numbers){
  int sum = numbers.reduce((value, element) => value + element);
  double mean = sum / numbers.length;
  print("Mean of numbers is: $mean");
}

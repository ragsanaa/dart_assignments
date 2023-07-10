void main(List<String> args) {
  Map<String, List<int>> costumers = {
    'John Snow': [500, 200],
    'Elliot Anderson': [150, 900],
    'Elliot Ander': [900],
  };
  print("Costumers: $costumers\n");

  costumers.forEach((key, value) {
    if(value.length >= 2){
      for(int i=0; i< value.length;i++){
        if(value[i] > 200) value[i]+=10;
      }
      print("$key: $value");
    }else{
      print("The customer $key has less than 2 cards and cards values: $value");
    }
  });
}

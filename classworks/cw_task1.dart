void main(List<String> args) {
  Map<String, List<int>> costumers = {
    'John Snow': [500, 200],
    'Elliot Anderson': [150, 900],
  };

  costumers.forEach((key, value) {
    for(int i=0; i< value.length;i++){
      if(value[i] > 200) value[i]+=10;
    }
    print("$key: $value");
  });
}

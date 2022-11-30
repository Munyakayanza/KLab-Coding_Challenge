class Product {
  String Name;
  int cost;

  Product(this.Name, this.cost);
  String toString() {
    return '{Name:${this.Name}, Price:${this.cost}}';
  }
}

void main() {
  var list = [];
  var List_1 = [];
  var List_2 = [];
  int sum1 = 0, sum2 = 0;
  var sortValues;
  Map item = {
    'Bike': 100,
    'TV': 200,
    'Album': 10,
    'Book': 5,
    'Phone': 500,
    'Computer': 1000
  };
  item.forEach((key, value) => list.add(Product(key, value)));
  print('Given Product:$list');
  sortValues = Map.fromEntries(
      item.entries.toList()..sort((e1, e2) => e1.value.compareTo(e2.value)));
  print("Sorted item:$sortValues");
  sortValues.forEach((key, value) => List_1.add(value));
  print('the product cheap is :${sortValues.keys.toList().first}');
  print('the Expensive product  is :${sortValues.keys.toList().last}');
  for (int i in List2) {
    sum1 += i;
    if (i > 10) {
      List_2.add(i);
    }
  }
  ;
  print('Sum of total price of product is:$sum1');
  for (int j in List_2) {
    sum2 += j;
  }
  ;
  print(
      'The total price of product after removing the ones less than 10 :$sum2');
}

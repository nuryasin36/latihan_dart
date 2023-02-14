void main() {
  var nestedList = [
    ["Toyota", "Avanza"],
    ["Toyota", "Innova"],
    ["Honda", "Civic"],
    ["Honda", "Jazz"],
    ["Mitsubishi", "Xpander"],
  ];

  var carBrandMap = <String, List<String>>{};

  for (var i = 0; i < nestedList.length; i++) {
    var brand = nestedList[i][0];
    var model = nestedList[i][1];

    if (carBrandMap.containsKey(brand)) {
      carBrandMap[brand]!.add(model);
    } else {
      carBrandMap[brand] = [model];
    }
  }

  print(carBrandMap);
}

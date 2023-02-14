Future<List<int>> multiplyList(List<int> dataList, int multiplier) async {
  List<int> result = [];

  for (int data in dataList) {
    int multipliedData =
        await Future.delayed(Duration(seconds: 1), () => data * multiplier);
    result.add(multipliedData);
  }

  return result;
}

void main() async {
  List<int> dataList = [1, 2, 3, 4];
  int multiplier = 5;

  List<int> result = await multiplyList(dataList, multiplier);
  print(result);
}

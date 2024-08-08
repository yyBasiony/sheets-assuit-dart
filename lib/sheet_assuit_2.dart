int print1ToN(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
  return n;
}
List<int> evenNumbers(int n) {
  List<int> numev = [];
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      numev.add(i);
    }
  }
  if (numev.isEmpty) {
    numev.add(-1);
  }
  return numev;
}
Map<String, int> countNumbers(List<int> numbers) {
  int evenCount = 0;
  int oddCount = 0;
  int positiveCount = 0;
  int negativeCount = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }

    if (num > 0) {
      positiveCount++;
    } else if (num < 0) {
      negativeCount++;
    }
  }

  return {
    'Even': evenCount,
    'Odd': oddCount,
    'Positive': positiveCount,
    'Negative': negativeCount,
  };
}
void main() {
  /* print1ToN(5);
  List<int> numev = evenNumbers(10);
  for (int i in numev) {
    print(i);
  }*/
  List<int> numbers = [-5, 0, -3,-4, 12];

  Map<String, int> result = countNumbers(numbers);

  print("Even: ${result['Even']}");
  print("Odd: ${result['Odd']}");
  print("Positive: ${result['Positive']}");
  print("Negative: ${result['Negative']}");
}
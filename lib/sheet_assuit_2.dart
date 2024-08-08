import 'dart:io';

List<int> print1ToN(int n) {
  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    numbers.add(i);
  }
  return numbers;
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

String fixedPassword(int n) {
  if (n == 1999) {
    return "Correct";
  } else {
    return "Wrong";
  }
}

int max(List<int> numbers) {
  int maxx = numbers[0];

  for (int num in numbers) {
    if (num > maxx) {
      maxx = num;
    }
  }

  return maxx;
}

List<String> multiplicationTable(int n) {
  List<String> results = [];
  for (int i = 1; i <= 12; i++) {
    results.add('$n * $i = ${n * i}');
  }
  return results;
}

int factorial(int num) {
  int fact = 1;
  for (int i = 1; i <= num; i++) {
    fact *= i;
  }
  return fact;
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

bool isPalindrome(String n) {
  int i = 0;
  int j = n.length - 1;
  while (i < j) {
    if (n[i] != n[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

void main() {
  List<int> numbers1ToN = print1ToN(5);
  for (int number in numbers1ToN) {
    print(number);
  }

  List<int> numev = evenNumbers(10);
  for (int i in numev) {
    print(i);
  }

  List<int> numbers = [-5, 0, -3, -4, 12];
  Map<String, int> result = countNumbers(numbers);
  print("Even: ${result['Even']}");
  print("Odd: ${result['Odd']}");
  print("Positive: ${result['Positive']}");
  print("Negative: ${result['Negative']}");

  print(fixedPassword(1999));

  print(max([1, 8, 5, 7, 5]));

  List<String> table = multiplicationTable(2);
  for (String line in table) {
    print(line);
  }

  print(factorial(5));
  print("Is 11 a prime? ${isPrime(11) ? 'YES' : 'NO'}");

  print("Is palindrom? ${isPalindrome(12121.toString()) ? 'YES' : 'NO'}");
}

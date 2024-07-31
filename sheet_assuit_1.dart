//import 'dart:io';
import 'dart:math';

void sayHello(String s) {
  print("Hello, $s");
}
void basicData(int a, int b, String c, double d, double e) {
  print("$a\n$b\n$c\n$d\n$e");
}
void simpleCalculator(int x, int y) {
  print("$x + $y = ${x + y}");
  print("$x * $y = ${x * y}");
  print("$x - $y = ${x - y}");
}
int difference(int a, int b, int c, int d) {
  return (a * b) - (c * d);
}
double areaCircle(double pi, double r) {
  return (r * r * pi);
}
int digitsSummation(int n, int m) {
  return ((n % 10) + (m % 10));
}
double summationFrom1ToN(int n) {
  return ((n * (n + 1)) / 2);
}
double twoNnmbers(int a, int b) {
  return (a / b);
}
void welcomeConditions(int a, int b) {
  if (a >= b) {
    print("Yes");
  } else {
    print("No");
  }
}
void multiples(int a, int b) {
  if (a % b == 0 || b % a == 0) {
    print("Multiples");
  } else {
    print("No Multiples");
  }
}
void maxAndMin(int a, int b, int c) {
  if (a <= b && a <= c) {
    if (b <= c) {
      print("$a\t$c");
    } else {
      print("$a\t$b");
    }
  } else if (b <= a && b <= c) {
    if (a <= c) {
      print("$b\t$c");
    } else {
      print("$b\t$a");
    }
  } else if (c <= a && c <= b) {
    if (a <= c) {
      print("$c\t$b");
    } else {
      print("$c\t$a");
    }
  }
}
void theBrothers(String r1, r2,String a1,String a2){
  if(r2==a2){
    print("ARE Brothers");
  }else{
  print("NOT") ;
  }
}
void capitalORSmallORDigit(String a) {
  const smallLetters = 'abcdefghijklmnopqrstuvwxyz';
  const capitalLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const digits = '0123456789';

  if (smallLetters.contains(a)) {
    print("ALPHA\nIS SMALL");
  } else if (capitalLetters.contains(a)) {
    print("ALPHA\nIS CAPITAL");
  } else if (digits.contains(a)) {
    print("IS DIGIT");
  }
}
String Char(String x){
  const String lowercase = 'abcdefghijklmnopqrstuvwxyz';
  const String uppercase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  if (lowercase.contains(x)) {
    return uppercase[lowercase.indexOf(x)];
  }
  else if (uppercase.contains(x)) {
    return lowercase[uppercase.indexOf(x)];
  }
  else {
    throw ArgumentError('enter single  character');
  }
}
int calculator(int a, int b, String x) {
  if (x == '+') {
    return a + b;
  } else if (x == '-') {
    return a - b;
  } else if (x == '*') {
    return a * b;
  } else if (x == '/') {
    return a ~/ b;
  } else {
    throw ArgumentError('Invalid operation');
  }
}
void firstDigit(int num){
  num = num.abs();
  while (num >= 10) {
    num = num ~/ 10;
  }
  if (num % 2 == 0) {
    print("EVEN");
  } else {
    print("ODD");
  }
}
void coordinatesPoint(double x,double y) {
  if (x == 0 && y == 0) {
    print("Origem");
  }
  else if (x == 0) {
    print("Eixo Y");
  }
  else if (y == 0) {
    print("Eixo X");
  }
  else if (x > 0 && y > 0) {
    print("Q1");
  }
  else if (x < 0 && y > 0) {
    print("Q2");
  }
  else if (x < 0 && y < 0) {
    print("Q3");
  }
  else if (x > 0 && y < 0) {
    print("Q4");
  }
}
void ageInDay(int num) {
  int year = num ~/ 365;
  int daysAfterYears = num % 365;
  int month = daysAfterYears ~/ 30;
  int day = daysAfterYears % 30;
  print("$year years");
  print("$month months");
  print("$day days");
}
void interval(double x){
  if(x>0&&x<=25)
  {
    print("Interval [0,25]");
  }
  else if(x>25&&x<=50)
  {
    print("Interval (25,50]");
  }
  else if(x>50&&x<=75)
  {
    print("Interval (50,75]");

  }
  else if(x>75&&x<=100)
  {
    print("Interval (75,100]");

  }else{
    print("Out of Intervals");

  }
}
void sortNumber(int a,int b,int c){
  if (a <= b && a <= c) {
    if (b <= c) {
      print("$a\n$b\n$c\n");
    } else {
      print("$a\n$c\n$b\n");
    }
  } else if (b <= a && b <= c) {
    if (a <= c) {
      print("$b\n$a\n$c\n");
    } else {
      print("$b\n$c\n$a\n");
    }
  } else if (c <= a && c <= b) {
    if (a <= b) {
      print("$c\n$a\n$b\n");
    } else {
      print("$c\n$b\n$a\n");
    }
  }

  print("");

 print("$a\n$b\n$c\n");

}
void floatOrInt(double x){
  int y=x.toInt();
  double w=x-y;
  if(w>0)
    print("float\t$y\t$w");
  else
    print("int\t$y");

}
void comparison(int x,int y,String s){
  if(s == '>' && x > y || s == '<' && x < y || s == '=' && x == y)
    print("Right");
  else
    print("Wrong");
}
void mathematicalExpression(int x,int y,int q,String s,String c){
  int t;
  if (s == '+') {
    t = x + y;
  } else if (s == '-') {
    t = x - y;
  } else if (s == '*') {
    t = x * y;
  } else {
    print("Incorrect value");
    return;
  }
  if (q == t) {
    print("Yes");
  } else {
    print(t);
  }
}
void toIntervals(int l1,int l2,int t1,int t2){
  int star1 = min(l1, l2);
  int end1 = max(l1, l2);
  int star2 = min(t1, t2);
  int end2 = max(t1, t2);
  if (end1 < star2 || end2 < star1) {
    print(-1);
  } else {
    int Start = max(star1, star2);
    int End = min(end1, end2);
    print("$Start\t$End");
  }
}
void last2Interger(int l1,int l2,int r1,int r2){
  int x=((l1%100)*(l2%100)*(r1%100)*(r2%100))%100;
  if(x<=10)
    print("0\t$x");
  else
    print("$x");
}
void hardCompare(int a,int b,int c,int d){
  if(b*log(a)>d*log(c))
    print("YES");
  else
    print("NO");
}

void main() {
  sayHello("programmer\n");
  basicData(3, 12345678912345, "a", 334.23, 14049.30493);
  simpleCalculator(5, 10);
  int differencee = difference(1, 2, 3, 4);
  print("Difference = $differencee");
  double area = areaCircle(3.141592653,2);
  print("$area");
  int sum= digitsSummation(13,12);
  print("$sum");
  double summation=summationFrom1ToN(3);
  print("$summation");
  double x=twoNnmbers(10,3);
  print("floor 10/3 = ${x.floor()}");
  print("ceil 10/3 = ${x.ceil()}");
  print("round 10/3 = ${x.round()}");
  welcomeConditions(10,9);
  multiples(9 ,3);
  maxAndMin(1,2,3);
  theBrothers("bassam"," ramadan","ahmed"," ramadan");
  capitalORSmallORDigit('A');
  String ch = Char('A');
  print('$ch');
  print(calculator(7, 54, '+'));
  firstDigit(4569);
  coordinatesPoint(4.5 ,-2.2);
  ageInDay(400);
  interval(25.1);
  sortNumber(3,-2,1);
  floatOrInt(234.000);
  comparison(5,4,'>');
  toIntervals(1 ,15, 5, 27);
  last2Interger(5,7,2,4);
  hardCompare(3,2,5,4);


}

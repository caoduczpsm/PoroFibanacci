import 'dart:io';

// Enter a, b and return List constain a, b
List<int> input() {
  int a = 0;
  int b = 0;

  do {
    print("Enter a: ");
    a = int.parse(stdin.readLineSync()!);

    print("Enter b: ");
    b = int.parse(stdin.readLineSync()!);

    if (a >= b) {
      print("Please re-enter, a must be less than b");
    }
  } while (a >= b);

  return [a, b];
}

// Sum function from a to b in Fibonacci
int sumFibonacci(int a, int b) {
  int sum = 0;
  int f1 = 0;
  int f2 = 1;

  while (f2 <= b) {
    if (f2 >= a) {
      sum += f2;
    }
    int temp = f1 + f2;
    f1 = f2;
    f2 = temp;
  }
  return sum;
}

// Main
void main() {
  List<int> so = input();
  int a = so[0];
  int b = so[1];

  // Gọi hàm tính tổng và in ra màn hình
  print("Sum from $a to $b in Fibonacci: ${sumFibonacci(a, b)}");
}

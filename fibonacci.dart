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

int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// Sum function from a to b in Fibonacci
int sumFibonacci(int a, int b) {
  int sum = 0;

  for (int i = a; i <= b; i++) {
    sum += fibonacci(i);
  }

  return sum;
}

// Main
void main() {
  List<int> number = input();
  int a = number[0];
  int b = number[1];

  // Gọi hàm tính tổng và in ra màn hình
  print("Sum from $a to $b in Fibonacci: ${sumFibonacci(a, b)}");
}

# fibonacci

import 'dart:io';

/// Calculate the nth term of the Fibonacci sequence
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print('Please enter a positive integer:');
  String? input = stdin.readLineSync();
  if (input != null) {
    try {
      int n = int.parse(input);
      if (n < 0) {
        print('Please enter a non-negative integer!');
      } else {
        int result = fibonacci(n);
        print('The $n-th term of the Fibonacci sequence is $result');
      }
    } catch (e) {
      print('Invalid input, please enter a positive integer!');
    }
  } else {
    print('No input provided!');
  }
}

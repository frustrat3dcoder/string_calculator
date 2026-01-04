import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';


// Empty String Returns 0
// Single Number Returns the Number
// Two Comma SeparatedNumbers Returns the Sum
// Handle any amount of numbers
// Handle new lines between numbers instead of commas
// Support different delimiters
// ; delimiter returns 3
// negative numbers throw exception - Negative numbers not allowed: -1

// Sample Input Examples:
// Input: “”, Output: 0
// Input: “1”, Output: 1
// Input: “1,5”, Output: 6



void main() {
  late StringCalculator stringCalculator;
  
  // Initial Setup
  setUp(() {
    stringCalculator = StringCalculator();
  });

  group('StringCalculator', () {

    test('should return 0 for empty string', () {});

    test('should return the number for single number', () {});

    test('should return the sum of two comma separated numbers', () {});

    test('should return any amount of numbers', () {});

    test('should handle new lines between numbers', () {});

    test('should support custom delimiters', () {});
    
    test('should throw an exception for negative numbers', () {});

    test('should show all negative numbers in exception message', () {});

  });

}

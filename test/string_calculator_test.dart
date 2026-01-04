import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';


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

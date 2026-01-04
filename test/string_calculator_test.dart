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

    test('should return 0 for empty string', () {
      expect(stringCalculator.add(''), 0);
    });

    test('should return the number for single number', () {
      expect(stringCalculator.add('1'), 1);
    });

    test('should return the sum of two comma separated numbers', () {
      expect(stringCalculator.add('1,2'), 3);
    });

    test('should return any amount of numbers', () {
      expect(stringCalculator.add('1,2,3'), 6);
    });

    test('should handle new lines between numbers', () {
      expect(stringCalculator.add('1\n2,3'), 6);
    });

    test('should support custom delimiters', () {
      expect(stringCalculator.add('//;1;2'), 3);
    });
    
    test('should throw an exception for negative numbers', () {
      expect(() => stringCalculator.add('-1'), throwsException);
    });

    test('should show all negative numbers in exception message', () {
      expect(() => stringCalculator.add('-1,-2'), throwsException);
    });

  });

}

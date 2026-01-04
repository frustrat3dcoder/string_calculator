library string_calculator;

// TODO:Empty String Returns 0
// TODO:Single Number Returns the Number
// TODO:Two Comma SeparatedNumbers Returns the Sum
// TODO:Handle any amount of numbers
// TODO:Handle new lines between numbers instead of commas
// TODO:Support different delimiters
// TODO: ; delimiter returns 3
// TODO: negative numbers throw exception - Negative numbers not allowed: -1

class StringCalculator {

  ///[add] method to add numbers in string
  int add(String numbers) {
    if(numbers.isEmpty) {
      return 0;
    }

    String delimiter = r'[,\n]';
    String numberString = numbers;

    // Check for custom delimiter format: //[delimiter]\n    
    if(numbers.startsWith("//")) {
      final delimiterEnd = numbers.indexOf('\n');
      final customDelimiter = numbers.substring(2, delimiterEnd);
      delimiter = RegExp.escape(customDelimiter);
      numbersString = numbers.substring(delimiterEnd + 1);
    }

    final parts = numbersString.split(RegExp(delimiter));
    final parsedNumbers = parts.map((n) => int.parse(n)).toList();
    
    // Check for negative numbers
    final negatives = parsedNumbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(', ')}');
    }
    
    return parsedNumbers.reduce((a, b) => a + b);
  }
}
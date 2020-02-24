import 'package:SampleApplication/palindrome.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Palindrome', () {
    test('Value of num is null at start', () {
      expect(Palindrome().num, null);
    });

    test('Check number = 54 should be false', () {
      final palindrome = Palindrome();
      palindrome.num = 54;
      expect(palindrome.checkPalindrome(), false);
    });

    test('Check number = 252 should be true', () {
      final palindrome = Palindrome();
      palindrome.num = 252;
      expect(palindrome.checkPalindrome(), true);
    });
  });
}
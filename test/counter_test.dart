import 'package:SampleApplication/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter', () {
    test('value should start from 0', () {
      expect(Counter().value, 0);
    });
  });

  test('Counter Value is incremented', () {
    final counter = Counter();
    counter.incremet();
    expect(counter.value, 1);
  });

  test('Counter Value is decremented', () {
    final counter = Counter();
    counter.decrement();
    expect(counter.value, -1);
  });
}

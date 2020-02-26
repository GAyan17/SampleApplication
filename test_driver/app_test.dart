import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Flutter Sample Counter App', () {
    final counterTextField = find.byValueKey('counter');
    final incrementButtonFinder = find.byValueKey('increment');
    final decrementButtonFidner = find.byValueKey('decrement');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('starts at 0', () async {
      expect(await driver.getText(counterTextField), '0');
    });

    test('increments the counter', () async {
      await driver.tap(incrementButtonFinder);
      expect(await driver.getText(counterTextField), '1');
    });

    test('decrements the counter', () async {
      await driver.tap(decrementButtonFidner);
      expect(await driver.getText(counterTextField), '0');
    });
  });
}
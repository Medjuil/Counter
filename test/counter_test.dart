import 'package:flutter_test/flutter_test.dart';
import 'package:spyier/counter.dart';

void main() {
  group('Counter-class', () {
    late Counter counter;

    setUp(() => counter = Counter());

    // Given, When, Then
    test('Given Counter classs, when instanstiated, then counter = 0', () {
      // Arrange
      // Act
      counter = Counter();
      int count = counter.count;
      // Assert
      expect(count, 0);
    });

    test(
        'Given the Counter class is instantiated, when calling the incrementCount function, then count = 1',
        () {
      // arrange

      // act
      counter.incrementCount();
      // assert
      expect(counter.count, 1);
    });

    test(
        'Given the Counter class is instantiated, when calling the incrementCount function, then count = -1',
        () {
      // arrange
      // act
      counter.decrementCount();
      // assert
      expect(counter.count, 0);
    });

    test(
        'Given the Counter class is instantiated, when calling the incrementCount and resetCount function, then count = 0',
        () {
      // arrange
      // act
      counter.incrementCount();
      counter.resetCount();
      // assert
      expect(counter.count, 0);
    });
  });
}

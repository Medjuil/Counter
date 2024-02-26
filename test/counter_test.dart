import 'package:flutter_test/flutter_test.dart';
import 'package:spyier/counter.dart';

void main() {
  // Given, When, Then
  test('Given Counter classs, when instanstiated, then counter = 0', () {
    // Arrange
    Counter counter;
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
    Counter counter = Counter();
    // act
    counter.incrementCount();
    // assert
    expect(counter.count, 1);
  });
}

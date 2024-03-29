class Counter {
  late int _count;

  Counter() {
    _count = 0;
  }

  int get count => _count;

  void incrementCount() {
    _count++;
  }

  void decrementCount() {
    if (_count > 0) _count--;
  }

  void resetCount() {
    _count = 0;
  }
}

import 'dart:math';

final Random random = Random();
final Random randomSecure = Random.secure();

/// Random integer between [min] (inclusive) and [max] (exclusive).
int randomInt({int min = 0, int max = 10, bool secure = false}) {
  assert(max >= min);

  final Random instance = secure ? randomSecure : random;

  final int delta = max - min;

  return instance.nextInt(delta) + min;
}

/// Random double between [min] (inclusive) and [max] (exclusive).
double randomDouble({double min = 0, double max = 10, bool secure = false}) {
  assert(max >= min);

  final Random instance = secure ? randomSecure : random;

  final double delta = max - min;

  return delta * instance.nextDouble() + min;
}

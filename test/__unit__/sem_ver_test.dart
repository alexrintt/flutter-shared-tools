import 'dart:math';

import 'package:flutter_shared_tools/utils/sem_ver.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'Should convert all possible versions to integers (6 bits | pow(2, 6) | 64)',
      () {
    final Set<int> maskedVersions = <int>{};
    final Set<String> unmaskedVersions = <String>{};
    final Set<String> inputVersions = <String>{};

    const int kMaxBits = 6;
    final int maxVersion = pow(2, kMaxBits) ~/ 1 - 1;
    final int maxOutputInteger = pow(2, kMaxBits * 3) ~/ 1 - 1;

    int counter = 0;

    for (int major = 0; major <= maxVersion; major++) {
      for (int minor = 0; minor <= maxVersion; minor++) {
        for (int patch = 0; patch <= maxVersion; patch++) {
          inputVersions.add('v$major.$minor.$patch');

          maskedVersions
              .add(maskVersion(inputVersions.last, maxBits: kMaxBits));
          unmaskedVersions
              .add(unmaskVersion(maskedVersions.last, maxBits: kMaxBits));

          counter++;
        }
      }
    }

    expect(
      unmaskedVersions.last,
      equals('v$maxVersion.$maxVersion.$maxVersion'),
    );

    expect(
      unmaskedVersions.first,
      equals('v0.0.0'),
    );
    expect(
      unmaskedVersions.elementAt(maxVersion),
      equals('v0.0.$maxVersion'),
    );
    expect(
      unmaskedVersions.elementAt(maxVersion + 1),
      equals('v0.1.0'),
    );
    expect(
      unmaskedVersions.length,
      equals(inputVersions.length),
    );

    // All versions should be different,
    //so the set should have the same size as the number of versions added when iterating
    expect(maskedVersions.length, equals(counter));

    // Expected version strings
    expect(
      inputVersions.first,
      equals('v0.0.0'),
    );
    expect(
      inputVersions.last,
      equals('v$maxVersion.$maxVersion.$maxVersion'),
    );

    expect(
      maskedVersions.first,
      equals(0),
    );

    expect(
      maskedVersions.last,
      equals(maxOutputInteger),
    );

    expect(
      maskVersion('v0.1.0') > maskVersion('v0.0.9'),
      isTrue,
    );
    expect(
      maskVersion('v0.1.0') < maskVersion('v0.1.1'),
      isTrue,
    );
    expect(
      maskVersion('v0.1.0') < maskVersion('v1.0.0'),
      isTrue,
    );
    expect(
      maskVersion('v0.0.0') < maskVersion('v0.0.1'),
      isTrue,
    );
    expect(
      maskVersion('v0.0.0') < maskVersion('v0.1.0'),
      isTrue,
    );
    expect(
      maskVersion('v0.0.0') <
          maskVersion('v$maxVersion.$maxVersion.$maxVersion'),
      isTrue,
    );
  });
}

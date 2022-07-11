/// [version] should be a string in the format of 'vX.Y.Z' where X, Y, Z are
/// integers representing the major, minor, and patch versions respectively.
///
/// For example, 'v1.2.3' represents version 1.2.3.
///
/// [maxBits] is the number of bits used to represent the number each version number: [vMAJOR.MINOR.PATCH].
///
/// 8 bits are enough to represent the number [v0.0.0] to [v255.255.255].
///
/// This function returns an unique integer representing the version.
int maskVersion(String version, {int maxBits = 8}) {
  final List<int> versions = version
      .replaceAll(RegExp('v'), '') // Remove 'v' from 'v0.1.0'
      .split('.') // Turn '0.1.0' into ['0', '1', '0']
      .map((String e) => int.parse(e))
      .toList();

  final int major = versions[0];
  final int minor = versions[1];
  final int patch = versions[2];

  return major << maxBits * 2 | minor << maxBits * 1 | patch << maxBits * 0;
}

/// [version] should be the integer returned by [maskVersion].
///
/// [maxBits] is the number of bits used to represent the number each version number: [vMAJOR.MINOR.PATCH].
///
/// 8 bits are enough to represent the number [v0.0.0] to [v255.255.255].
///
/// This function returns the original string representing the version.
String unmaskVersion(int version, {int maxBits = 8}) {
  final int major = (version >> maxBits * 2) & ((1 << maxBits) - 1);
  final int minor = (version >> maxBits * 1) & ((1 << maxBits) - 1);
  final int patch = (version >> maxBits * 0) & ((1 << maxBits) - 1);

  return 'v$major.$minor.$patch';
}

int semVer(String version, {int maxBits = 8}) =>
    maskVersion(version, maxBits: maxBits);

## How to install

(Recommended) Fork and depend of your fork instead using this one. This is a really unstable installation since it's not from _pub.dev_.

```yaml
dependencies:
  # ...
  flutter_shared_tools:
    git:
      url: https://github.com/lakscastro/flutter-shared-tools
      ref: master
  # ...
```

## Features

Check out full list of features.

### Available extensions

- `ApplyIfNotNull`.

```dart
// Single line solution:
someNullValue?.apply((T value) => executeOnlyIfItsNotNull(value)) ?? otherwise();

// Instead of:
if (someNullValue != null) {
  executeOnlyIfItsNotNull(someNullValue!);
} else {
  otherwise();
}
```

- `MediaQueryAlias`.

```dart
// Allow usage of:
context.width; // Alias for MediaQuery.of(context).size.width;
context.height; // Alias for MediaQuery.of(context).size.height;
// Many others, check [MediaQueryAlias] extension for full list of alias
```

- `NavigatorAlias`.

```dart
// Use context to manage routes:
context.push(...);
context.pop(...);
context.maybePop(...);

// Instead of:
Navigator.of(context).push(...);
Navigator.of(context).pop(...);
Navigator.of(context).maybePop(...);
```

- `ScrollControllerUtils`.

```dart
// Use to build an infinite scroll
scrollController.addOffsetListener(
  () {
    loadMoreItemFromApi(); // Will be called everytime scroll reaches the bottom
  }, 
  context.height / 2, // Optionally set an offset from the bottom to load before it reaches the real bottom
);
```

- `ThemeAlias`.

```dart
if (context.isDark) { /* ... */ }
context.primaryColor; // ...
context.colorScheme; // ...
context.onPrimary; // ...
// ...etc. See full list at [ThemeAlias] extension.
```

### GitHub color schemes

See [primer.style/primitives/colors](https://primer.style/primitives/colors), the official website of color scheme of GitHub theme.

This module allows you use it inside Flutter.

```dart
// Object with all colors of the GitHub Light theme
const kGitHubLight = GitHubLightColors();

// Object with all colors of the GitHub Dark Dimmed theme
const kGitHubDarkDimmed = GitHubDarkDimmedColors();

// Object with all colors of the GitHub Dark theme
const kGitHubDark = GitHubDarkColors();

// Object with all colors of the GitHub Light Colorblind theme
const kGitHubLightColorblind = GitHubLightColorblindColors();
```

### Utilities

- _Sem Ver_ masking function. Useful to work with database versions (Which accepts only integers).

```dart
maskVersion('v0.1.0'); // 256
unmarkVersion(256); // 'v0.1.0'
```

### Widgets

- `SkeletonAnimation`. Useful to display as loading indicators rather than the `CircularProgressIndicator()`.

```dart
Container(
  child: SkeletonAnimation(
    child: SizedBox(width: 100, height: 25), // Define Skeleton size
  ),
);
```

### Constants

- Border Radius constants.

```dart
const BorderRadius kBRadius8 = BorderRadius.all(kRadius8);
const BorderRadius kBRadius4 = BorderRadius.all(kRadius4);
const BorderRadius kBRadius2 = BorderRadius.all(kRadius2);
```

- Radius constants.

```dart
const Radius kRadius8 = Radius.circular(8);
const Radius kRadius4 = Radius.circular(4);
const Radius kRadius2 = Radius.circular(2);
```

- DP constants.

```dart
const double k0dp = 0 * 2.0;
const double k1dp = 1 * 2.0;
const double k2dp = 2 * 2.0;
const double k3dp = 3 * 2.0;
const double k4dp = 4 * 2.0;
const double k5dp = 5 * 2.0;
const double k6dp = 6 * 2.0;
const double k7dp = 7 * 2.0;
const double k8dp = 8 * 2.0;
const double k9dp = 9 * 2.0;
// ...available up to [k40dp]
```
<br>

<samp>

<h2 align="center">
  Open Source
</h2>
<p align="center">
  <sub>Copyright © 2022-present, Laks Castro.</sub>
</p>
<p align="center">Flutter Shared Tools <a href="https://github.com/lakscastro/flutter-shared-tools/blob/master/LICENSE">is MIT licensed 💖</a></p>
<p align="center">
  <img src="https://user-images.githubusercontent.com/51419598/178327667-15a00cd0-60c5-485f-8a0e-68c92545907b.png" width="35" />
</p>
  
</samp>

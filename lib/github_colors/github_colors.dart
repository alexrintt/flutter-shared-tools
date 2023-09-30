import 'package:flutter/cupertino.dart';

import './dark.dart' as dark_theme;
import './dark_dimmed.dart' as dark_dimmed_theme;
import './light.dart' as light_theme;
import './light_colorblind.dart' as light_colorblind_theme;

/// All data were scraped from official primer interface guidelines on variables page:
/// https://primer.style/primitives/colors

enum GitHubColorScheme {
  darkDimmed,
  dark,
  light,
  lightColorblind,
}

const GitHubColors kGitHubLight = GitHubLightColors();
const GitHubColors kGitHubDarkDimmed = GitHubDarkDimmedColors();
const GitHubColors kGitHubDark = GitHubDarkColors();
const GitHubColors kGitHubLightColorblind = GitHubLightColorblindColors();

const Map<GitHubColorScheme, GitHubColors> kGitHubMapColors =
    <GitHubColorScheme, GitHubColors>{
  GitHubColorScheme.dark: kGitHubDark,
  GitHubColorScheme.darkDimmed: kGitHubDarkDimmed,
  GitHubColorScheme.light: kGitHubLight,
  GitHubColorScheme.lightColorblind: kGitHubLightColorblind,
};

abstract class GitHubColors {
  const GitHubColors();

  Map<String, Color> get accent;
  Map<String, Color> get attention;
  Map<String, Color> get border;
  Map<String, Color> get canvas;
  Map<String, Color> get closed;
  Map<String, Color> get danger;
  Map<String, Color> get done;
  Map<String, Color> get fg;
  Map<String, Color> get neutral;
  Map<String, Color> get open;
  Map<String, Color> get severe;
  Map<String, Color> get sponsors;
  Map<String, Color> get success;
}

class GitHubLightColors extends GitHubColors {
  const GitHubLightColors();

  @override
  Map<String, Color> get accent => light_theme.kAccent;

  @override
  Map<String, Color> get attention => light_theme.kAttention;

  @override
  Map<String, Color> get border => light_theme.kBorder;

  @override
  Map<String, Color> get canvas => light_theme.kCanvas;

  @override
  Map<String, Color> get closed => light_theme.kClosed;

  @override
  Map<String, Color> get danger => light_theme.kDanger;

  @override
  Map<String, Color> get done => light_theme.kDone;

  @override
  Map<String, Color> get fg => light_theme.kFg;

  @override
  Map<String, Color> get neutral => light_theme.kNeutral;

  @override
  Map<String, Color> get open => light_theme.kOpen;

  @override
  Map<String, Color> get severe => light_theme.kSevere;

  @override
  Map<String, Color> get sponsors => light_theme.kSponsors;

  @override
  Map<String, Color> get success => light_theme.kSuccess;
}

class GitHubDarkDimmedColors extends GitHubColors {
  const GitHubDarkDimmedColors();

  @override
  Map<String, Color> get accent => dark_dimmed_theme.kAccent;

  @override
  Map<String, Color> get attention => dark_dimmed_theme.kAttention;

  @override
  Map<String, Color> get border => dark_dimmed_theme.kBorder;

  @override
  Map<String, Color> get canvas => dark_dimmed_theme.kCanvas;

  @override
  Map<String, Color> get closed => dark_dimmed_theme.kClosed;

  @override
  Map<String, Color> get danger => dark_dimmed_theme.kDanger;

  @override
  Map<String, Color> get done => dark_dimmed_theme.kDone;

  @override
  Map<String, Color> get fg => dark_dimmed_theme.kFg;

  @override
  Map<String, Color> get neutral => dark_dimmed_theme.kNeutral;

  @override
  Map<String, Color> get open => dark_dimmed_theme.kOpen;

  @override
  Map<String, Color> get severe => dark_dimmed_theme.kSevere;

  @override
  Map<String, Color> get sponsors => dark_dimmed_theme.kSponsors;

  @override
  Map<String, Color> get success => dark_dimmed_theme.kSuccess;
}

class GitHubDarkColors extends GitHubColors {
  const GitHubDarkColors();

  @override
  Map<String, Color> get accent => dark_theme.kAccent;

  @override
  Map<String, Color> get attention => dark_theme.kAttention;

  @override
  Map<String, Color> get border => dark_theme.kBorder;

  @override
  Map<String, Color> get canvas => dark_theme.kCanvas;

  @override
  Map<String, Color> get closed => dark_theme.kClosed;

  @override
  Map<String, Color> get danger => dark_theme.kDanger;

  @override
  Map<String, Color> get done => dark_theme.kDone;

  @override
  Map<String, Color> get fg => dark_theme.kFg;

  @override
  Map<String, Color> get neutral => dark_theme.kNeutral;

  @override
  Map<String, Color> get open => dark_theme.kOpen;

  @override
  Map<String, Color> get severe => dark_theme.kSevere;

  @override
  Map<String, Color> get sponsors => dark_theme.kSponsors;

  @override
  Map<String, Color> get success => dark_theme.kSuccess;
}

class GitHubLightColorblindColors extends GitHubColors {
  const GitHubLightColorblindColors();

  @override
  Map<String, Color> get accent => light_colorblind_theme.kAccent;

  @override
  Map<String, Color> get attention => light_colorblind_theme.kAttention;

  @override
  Map<String, Color> get border => light_colorblind_theme.kBorder;

  @override
  Map<String, Color> get canvas => light_colorblind_theme.kCanvas;

  @override
  Map<String, Color> get closed => light_colorblind_theme.kClosed;

  @override
  Map<String, Color> get danger => light_colorblind_theme.kDanger;

  @override
  Map<String, Color> get done => light_colorblind_theme.kDone;

  @override
  Map<String, Color> get fg => light_colorblind_theme.kFg;

  @override
  Map<String, Color> get neutral => light_colorblind_theme.kNeutral;

  @override
  Map<String, Color> get open => light_colorblind_theme.kOpen;

  @override
  Map<String, Color> get severe => light_colorblind_theme.kSevere;

  @override
  Map<String, Color> get sponsors => light_colorblind_theme.kSponsors;

  @override
  Map<String, Color> get success => light_colorblind_theme.kSuccess;
}

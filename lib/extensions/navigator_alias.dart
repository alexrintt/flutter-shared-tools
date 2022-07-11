import 'package:flutter/cupertino.dart';

extension NavigatorAlias on BuildContext {
  NavigatorState get navigator => Navigator.of(this);

  Future<T?> push<T extends Object?>(Route<T> route) =>
      navigator.push<T>(route);

  void pop<T extends Object?>([T? result]) => navigator.pop<T>(result);

  void popUntil(bool Function(Route<dynamic>) predicate) =>
      navigator.popUntil(predicate);

  void replace<T extends Object?>({
    required Route<dynamic> oldRoute,
    required Route<T> newRoute,
  }) =>
      navigator.replace(oldRoute: oldRoute, newRoute: newRoute);

  bool canPop<T extends Object?>() => navigator.canPop();

  Future<bool> maybePop<T extends Object?>([T? result]) =>
      navigator.maybePop<T>(result);

  Future<T?> popAndPushNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) =>
      navigator.popAndPushNamed(
        routeName,
        arguments: arguments,
        result: result,
      );

  Future<T?> pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) =>
      navigator.pushNamed(routeName, arguments: arguments);

  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) =>
      navigator.pushReplacementNamed(routeName);

  Future<T?> pushNamedAndRemoveUntil<T extends Object?, TO extends Object?>(
    String newRouteName,
    bool Function(Route<dynamic>) predicate, {
    Object? arguments,
  }) =>
      navigator.pushNamedAndRemoveUntil(
        newRouteName,
        predicate,
        arguments: arguments,
      );
}

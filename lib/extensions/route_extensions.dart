import 'package:flutter_modular/flutter_modular.dart';

extension RouteExtension on RouteManager {
  void fadeInChild(
    String name, {
    required ModularChild child,
    CustomTransition? customTransition,
    List<ParallelRoute> children = const [],
    Duration? duration,
    bool maintainState = true,
    List<RouteGuard> guards = const [],
  }) {
    this.child(
      name,
      child: child,
      transition: TransitionType.fadeIn,
      customTransition: customTransition,
      children: children,
      duration: duration,
      maintainState: maintainState,
      guards: guards,
    );
  }
}

import 'package:flutter_modular/flutter_modular.dart';

class FadeInRoute extends ChildRoute {
  FadeInRoute(super.name, {required super.child})
      : super(transition: TransitionType.fadeIn);
}

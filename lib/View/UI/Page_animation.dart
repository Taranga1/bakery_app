import 'package:flutter/cupertino.dart';

class BouncyAnimations extends PageRouteBuilder {
  final Widget widget;
  BouncyAnimations({this.widget})
      : super(
          transitionDuration: Duration(seconds: 2),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secAnimation,
              Widget child) {
            animation = CurvedAnimation(
                parent: animation, curve: Curves.easeInOutQuart);
            return ScaleTransition(
              scale: animation,
              child: child,
              alignment: Alignment.center,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return widget;
          },
        );
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget page;
  CustomRoute({required this.page})
      : super(pageBuilder: (context, animation, secondaryAnimation) => page);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return ScaleTransition(
      scale: animation,
      child: child,
    );
    //  FadeTransition(
    //   opacity: animation,
    //   child: child,
    // );
  }
}

import 'package:flutter/material.dart';

mixin DocRouterSyncMixin<T extends StatefulWidget> on State<T> {
  final GlobalKey<NavigatorState> docNavigatorKey = GlobalKey<NavigatorState>();

  bool get isInDocEnv => false;

  void push(String path) {}
}

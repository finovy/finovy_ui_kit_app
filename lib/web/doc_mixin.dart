import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

mixin DocRouterSyncMixin<T extends StatefulWidget> on State<T> {
  final GlobalKey<NavigatorState> docNavigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    if (isInDocEnv) {
      window.top!
          .postMessage(<String, String>{'type': 'iframeReady'} as dynamic, '*');
      window.addEventListener('message', _listenFromWindowTop);
    }

    super.initState();
  }

  @override
  void dispose() {
    if (isInDocEnv) {
      window.removeEventListener('message', _listenFromWindowTop);
    }

    super.dispose();
  }

  bool get isInDocEnv => kIsWeb && window.top != window;

  void push(String path) {
    final NavigatorState? docRouter = docNavigatorKey.currentState;
    if (docRouter?.canPop() == true) {
      docRouter?.popAndPushNamed(path);
    }
  }

  void _listenFromWindowTop(Event event) {
    final dynamic message = (event as MessageEvent).data;
    final String path = '/' + message['value'].toString().split('/').last;
    push(path);
  }
}

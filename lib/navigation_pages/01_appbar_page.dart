import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Appbar Page'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            FNUIAppbar(
              leftWidget: Icon(Icons.arrow_back_ios_new),
              rightWidget: Icon(Icons.settings),
              backgroundColor: FNColors.white,
              titleWidget: FNUIText(
                text: 'App title',
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIAppbar(
              leftWidget: Icon(Icons.arrow_back_ios_new),
              rightWidget: Icon(Icons.settings),
              backgroundColor: FNColors.white,
              titleWidget: FNUIText(
                text: 'App title',
              ),
            )''',
            ),
          ],
        ));
  }
}

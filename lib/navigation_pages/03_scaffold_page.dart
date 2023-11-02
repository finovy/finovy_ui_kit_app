import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FNUIScaffold(
      leftCallback: () => Navigator.pop(context),
      rightWidget: Icon(Icons.settings),
      title: 'Scaffold Page',
      child: Container(
        color: FNColors.green,
        child: Column(
          children: [
            const CodeHighlightCard(
              code: '''FNUIScaffold(
      leftWidget: Icon(Icons.arrow_back_ios_new),
      rightWidget: Icon(Icons.settings),
      backgroundColor: FNColors.red,
      title: 'Scaffold Page',
      child: Container(
        color: FNColors.green,
        child: Column(
          children: [
          ],
        ),
      ),
    )''',
            ),
          ],
        ),
      ),
    );
  }
}

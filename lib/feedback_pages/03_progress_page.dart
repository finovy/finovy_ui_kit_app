import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            FNUIText(text: 'Circular'),
            SizedBox(
              width: 150,
              height: 150,
              child: FNUICircularProgress(
                radius: 60,
                percent: 0.5,
                fillColor: FNColors.background,
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUICircularProgress(
                radius: 60,
                percent: 0.5,
                fillColor: FNColors.background,
              )''',
            ),
            FNUIText(text: 'Linear'),
            SizedBox(
              width: 150,
              height: 150,
              child: FNUILinearProgress(
                percent: 0.45,
                fillColor: FNColors.background,
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUILinearProgress(
                percent: 0.45,
                fillColor: FNColors.background,
              )''',
            ),
          ],
        ));
  }
}

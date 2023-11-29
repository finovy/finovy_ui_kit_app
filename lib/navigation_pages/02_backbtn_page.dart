import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class BackBtnPage extends StatelessWidget {
  const BackBtnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BackBtn'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                child: FNUINavBack(
                    callBack: () => FNUIToast.show(text: 'BackBtn Page'))),
            const CodeHighlightCard(
              code: '''FNUINavBack(
                    callBack: () => FNUIToast.show(text: 'BackBtn Page'))''',
            ),
          ],
        ));
  }
}

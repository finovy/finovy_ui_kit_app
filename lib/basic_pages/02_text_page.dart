import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialStatesController statesController = MaterialStatesController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('button测试'),
        centerTitle: true,
      ),
      body: ListView(children: [
        const FNUIText(
          text: '文本展示demo文本展示demo文本展示demo',
          padding: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''FNUIText(
          text: '文本展示demo文本展示demo文本展示demo',
          padding: EdgeInsets.all(8),
        )''',
        ),
      ]),
    );
  }
}

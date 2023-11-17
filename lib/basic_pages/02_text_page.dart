import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text测试'),
        centerTitle: true,
      ),
      body: ListView(children: [
        const FNUIText(
          text:
              '自动换行：文本展示demo文本展示demo文本展示demo、文本展示demo文本展示demo文本展示demo文本展示demo文本展示demo文本展示demo',
          padding: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''FNUIText(
          text: '自动换行：文本展示demo文本展示demo文本展示demo、文本展示demo文本展示demo文本展示demo文本展示demo文本展示demo文本展示demo',
          padding: EdgeInsets.all(8),
        )''',
        ),
        const FNUIText(
          text: '限制行数：文本展示demo文本展示demo文本展示demo、文本展示demo文本展示demo文本展示demo',
          padding: EdgeInsets.all(8),
          maxLines: 2,
        ),
        const CodeHighlightCard(
          code: '''FNUIText(
          text: '限制行数：文本展示demo文本展示demo文本展示demo、文本展示demo文本展示demo文本展示demo',
          padding: EdgeInsets.all(8),
          maxLines: 2,
        )''',
        ),
      ]),
    );
  }
}

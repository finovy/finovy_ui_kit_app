import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class TextPage extends StatelessWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
        centerTitle: true,
      ),
      body: ListView(children: [
        FNUIText(
          text: '${tr("Text.word_wrap")}：${tr("Text.description")}',
          padding: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''
          FNUIText(
          text: 'tr("Text.word_wrap")：{tr("Text.description")}',
          padding: EdgeInsets.all(8),
        )
          ''',
        ),
        FNUIText(
          text: '${tr("Text.max_line")}：${tr("Text.description")}',
          padding: EdgeInsets.all(8),
          maxLines: 2,
        ),
        const CodeHighlightCard(
          code: '''
          FNUIText(
          text: 'tr("Text.word_wrap")：{tr("Text.description")}',
          padding: EdgeInsets.all(8),
          maxLines: 2,
        )
          ''',
        ),
      ]),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class NoticeBarPage extends StatelessWidget {
  const NoticeBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NoticeBar'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            FNUIText(text: 'icon + scroll'),
            FNUINoticeBar(
              scrollable: true,
              leftIconName: FNIcons.iconBaseMessage,
              text: tr("Text.description"),
            ),
            const CodeHighlightCard(
              code: '''FNUINoticeBar(
              scrollable: true,
              leftIconName: Icons.access_alarm,
              text:
                  'description description description description description description description ',
            )''',
            ),
            FNUIText(text: tr("NoticeBar.wrapable")),
            FNUINoticeBar(
              scrollable: false,
              wrapAble: true,
              text: tr("Text.description").substring(0, 100),
            ),
            const CodeHighlightCard(
              code: '''FNUINoticeBar(
              scrollable: false,
              wrapAble: true,
              text:
                  'description description description description description description description ',
            )''',
            ),
            FNUIText(text: tr("Tag.closeable")),
            FNUINoticeBar(
              mode: FNNoticeBarMode.closeable,
              scrollable: true,
              background: FNColors.green,
              text: tr("Text.description"),
            ),
            const CodeHighlightCard(
              code: '''FNUINoticeBar(
              mode: FNNoticeBarMode.closeable,
              scrollable: true,
              background: FNColors.green,
              text:
                  'description description description description description description description ',
            )''',
            ),
          ],
        ));
  }
}

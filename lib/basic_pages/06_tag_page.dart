import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class TagPage extends StatelessWidget {
  const TagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tag'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            FNUICell(
              title: tr("Tag.tagStyle"),
              suffix: Row(
                children: [
                  FNUITag(
                    type: FNTagType.primary,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.danger,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.warning,
                    child: Text(tr("content")),
                  ),
                ],
              ),
            ),
            const CodeHighlightCard(
              code: '''Row(
                children: [
                  FNUITag(
                    type: FNTagType.primary,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.danger,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.warning,
                    child: Text(tr("content")),
                  ),
                ],
              )''',
            ),
            FNUICell(
              title: tr("Tag.plain"),
              suffix: FNUITag(
                type: FNTagType.success,
                child: Text(tr("content")),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUITag(
                type: FNTagType.success,
                child: Text(tr("content")),
              )''',
            ),
            FNUICell(
              title: tr("Tag.round"),
              suffix: FNUITag(
                round: true,
                type: FNTagType.success,
                child: Text(tr("content")),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUITag(
                round: true,
                type: FNTagType.success,
                child: Text(tr("content")),
              )''',
            ),
            FNUICell(
              title: tr("Tag.customSize"),
              suffix: Row(
                children: [
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.large,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.medium,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.normal,
                    child: Text(tr("content")),
                  ),
                ],
              ),
            ),
            const CodeHighlightCard(
              code: '''Row(
                children: [
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.large,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.medium,
                    child: Text(tr("content")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.normal,
                    child: Text(tr("content")),
                  ),
                ],
              )''',
            ),
            FNUICell(
              title: tr("Tag.closeable"),
              suffix: FNUITag(
                round: true,
                closeable: true,
                type: FNTagType.success,
                child: Text(tr("content")),
                onClose: () => print('close tag'),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUITag(
                round: true,
                closeable: true,
                type: FNTagType.success,
                child: Text(tr("content")),
                onClose: () => print('close tag'),
              )''',
            ),
          ],
        ));
  }
}

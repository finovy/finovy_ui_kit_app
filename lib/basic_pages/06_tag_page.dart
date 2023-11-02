import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class TagPage extends StatelessWidget {
  const TagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tag Page'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            FNUICell(
              title: '不同类型类型',
              suffix: Row(
                children: [
                  FNUITag(
                    type: FNTagType.primary,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.danger,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.warning,
                    child: Text('标签'),
                  ),
                ],
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUICell(
              title: '不同类型类型',
              suffix: Row(
                children: [
                  FNUITag(
                    type: FNTagType.primary,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.danger,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    type: FNTagType.warning,
                    child: Text('标签'),
                  ),
                ],
              ),
            )''',
            ),
            FNUICell(
              title: '镂空类型',
              suffix: FNUITag(
                type: FNTagType.success,
                child: Text('标签'),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUITag(
                type: FNTagType.success,
                child: Text('标签'),
              )''',
            ),
            FNUICell(
              title: '圆角类型',
              suffix: FNUITag(
                round: true,
                type: FNTagType.success,
                child: Text('标签'),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUITag(
                round: true,
                type: FNTagType.success,
                child: Text('标签'),
              )''',
            ),
            FNUICell(
              title: '标签大小',
              suffix: Row(
                children: [
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.large,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.medium,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.normal,
                    child: Text('标签'),
                  ),
                ],
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUICell(
              title: '标签大小',
              suffix: Row(
                children: [
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.large,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.medium,
                    child: Text('标签'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  FNUITag(
                    round: true,
                    type: FNTagType.danger,
                    size: FNTagSize.normal,
                    child: Text('标签'),
                  ),
                ],
              ),
            )''',
            ),
            FNUICell(
              title: '显示关闭按钮',
              suffix: FNUITag(
                round: true,
                closeable: true,
                type: FNTagType.success,
                child: Text('标签'),
                onClose: () => print('close tag'),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUITag(
                round: true,
                closeable: true,
                type: FNTagType.success,
                child: Text('标签'),
                onClose: () => print('close tag'),
              )''',
            ),
          ],
        ));
  }
}

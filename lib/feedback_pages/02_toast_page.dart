import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ToastPage extends StatelessWidget {
  const ToastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast Page'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '顶部展示（超长文本）',
                  onTap: () => {
                        FNUIToast.show(
                          text: '顶部展示顶部展示顶部展示顶部展示顶部展示顶部展示特别长的文本',
                          align: ToastAlign.top,
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text: '顶部展示顶部展示顶部展示顶部展示顶部展示顶部展示特别长的文本',
                          align: ToastAlign.top,
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '居中展示',
                  onTap: () => {
                        FNUIToast.showInCenter(
                            text: '居中展示toast', context: context)
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.showInCenter(
                            text: '居中展示toast', context: context)
                      })''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '底部展示',
                  onTap: () => {
                        FNUIToast.show(
                          text: '底部展示toast',
                          align: ToastAlign.bottom,
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text: '底部展示toast',
                          align: ToastAlign.bottom,
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '左侧带icon展示(失败)',
                  onTap: () => {
                        FNUIToast.show(
                          text: '左侧带icon展示',
                          preIcon: const Icon(
                            Icons.privacy_tip_outlined,
                            size: 20,
                          ),
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text: '左侧带icon展示',
                          preIcon: const Icon(
                            Icons.privacy_tip_outlined,
                            size: 20,
                          ),
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '左侧带icon展示（成功）',
                  onTap: () => {
                        FNUIToast.show(
                          text: '左侧带icon展示',
                          align: ToastAlign.top,
                          preIcon: const Icon(
                            Icons.check,
                            size: 20,
                          ),
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text: '左侧带icon展示',
                          align: ToastAlign.top,
                          preIcon: const Icon(
                            Icons.check,
                            size: 20,
                          ),
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '左侧带icon展示（加载中）',
                  onTap: () => {
                        FNUIToast.show(
                            text: '左侧带icon展示',
                            align: ToastAlign.top,
                            preIcon: const CupertinoActivityIndicator())
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                            text: '左侧带icon展示',
                            align: ToastAlign.top,
                            preIcon: const CupertinoActivityIndicator())''',
            ),
          ],
        )
      ]),
    );
  }
}

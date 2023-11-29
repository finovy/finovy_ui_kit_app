import 'package:easy_localization/easy_localization.dart';
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
        title: const Text('Toast'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: '${tr("Toast.positionTop")}（${tr("Toast.longText")}）',
                  onTap: () => {
                        FNUIToast.show(
                          text:
                              'Creates a visual scaffold for Material Design widgets.',
                          align: ToastAlign.top,
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text:
                              'Creates a visual scaffold for Material Design widgets.',
                          align: ToastAlign.top,
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: tr("Toast.positionCenter"),
                  onTap: () => {
                        FNUIToast.show(
                          text:
                              'Creates a visual scaffold for Material Design widgets.',
                          align: ToastAlign.center,
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text:
                              'Creates a visual scaffold for Material Design widgets.',
                          align: ToastAlign.center,
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: tr("Toast.positionBottom"),
                  onTap: () => {
                        FNUIToast.show(
                          text:
                              'Creates a visual scaffold for Material Design widgets.',
                          align: ToastAlign.bottom,
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text:
                              'Creates a visual scaffold for Material Design widgets.',
                          align: ToastAlign.bottom,
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: tr("Toast.text3"),
                  onTap: () => {
                        FNUIToast.show(
                          text: tr("Toast.text3"),
                          preIcon: FNUIIcon(
                            iconName: FNIcons.iconBaseFailed,
                            color: FNColors.iconDanger,
                          ),
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text: tr("Toast.text3"),
                          preIcon: FNUIIcon(
                            iconName: FNIcons.iconBaseFailed,
                            color: FNColors.iconDanger,
                          ),
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: tr("Toast.text2"),
                  onTap: () => {
                        FNUIToast.show(
                          text: tr("Toast.text2"),
                          align: ToastAlign.top,
                          preIcon: FNUIIcon(
                            iconName: FNIcons.iconBaseSuccess,
                            color: FNColors.iconSuccess,
                          ),
                        )
                      }),
            ),
            const CodeHighlightCard(
              code: '''FNUIToast.show(
                          text: tr("Toast.text2"),
                          align: ToastAlign.top,
                          preIcon: FNUIIcon(
                            iconName: FNIcons.iconBaseSuccess,
                            color: FNColors.iconSuccess,
                          ),
                        )''',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FNUIButton(
                  text: tr("Toast.title2"),
                  onTap: () => {
                        FNUIToast.show(
                            text: tr("Toast.title2"),
                            align: ToastAlign.top,
                            preIcon: const CupertinoActivityIndicator())
                      }),
            ),
            const CodeHighlightCard(
              code: ''' FNUIToast.show(
                            text: tr("Toast.title2"),
                            align: ToastAlign.top,
                            preIcon: const CupertinoActivityIndicator())''',
            ),
          ],
        )
      ]),
    );
  }
}

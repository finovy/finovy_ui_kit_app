import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button测试'),
        centerTitle: true,
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        const FNUIText(
          text: '正常状态',
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: ('主要按钮'),
              type: FNButtonType.primary,
            ),
            FNUIButton(
              text: ('次要按钮'),
              type: FNButtonType.secondary,
            ),
            FNUIButton(
              text: ('线框按钮'),
              type: FNButtonType.hollowed,
            ),
            FNUIButton(
              text: ('文字按钮'),
              type: FNButtonType.text,
            ),
          ],
        ),
        const CodeHighlightCard(
          code: '''
          Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: ('主要按钮'),
              type: FNButtonType.primary,
            ),
            FNUIButton(
              text: ('次要按钮'),
              type: FNButtonType.secondary,
            ),
            FNUIButton(
              text: ('线框按钮'),
              type: FNButtonType.hollowed,
            ),
            FNUIButton(
              text: ('文字按钮'),
              type: FNButtonType.text,
            ),
          ],
        )''',
        ),
        const FNUIText(
          text: '加载状态',
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: ('主要按钮'),
              loadingText: '加载中',
              type: FNButtonType.primary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('次要按钮'),
              loadingText: '加载中',
              type: FNButtonType.secondary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('线框按钮'),
              loadingText: '加载中',
              type: FNButtonType.hollowed,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('文字按钮'),
              loadingText: '加载中',
              type: FNButtonType.text,
              status: ButtonStatus.loading,
            ),
          ],
        ),
        const CodeHighlightCard(
          code: '''
          Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: ('主要按钮'),
              loadingText: '加载中',
              type: FNButtonType.primary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('次要按钮'),
              loadingText: '加载中',
              type: FNButtonType.secondary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('线框按钮'),
              loadingText: '加载中',
              type: FNButtonType.hollowed,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('文字按钮'),
              loadingText: '加载中',
              type: FNButtonType.text,
              status: ButtonStatus.loading,
            ),
          ],
        )''',
        ),
        const FNUIText(
          text: '禁用状态',
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('次要按钮'),
            type: FNButtonType.secondary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('线框按钮'),
            type: FNButtonType.hollowed,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('文字按钮'),
            type: FNButtonType.text,
          ),
        ]),
        const CodeHighlightCard(
          code: '''
          Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('次要按钮'),
            type: FNButtonType.secondary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('线框按钮'),
            type: FNButtonType.hollowed,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: ('文字按钮'),
            type: FNButtonType.text,
          ),
        ])''',
        ),
        const FNUIText(
          text: '自定义icon按钮',
          padding: EdgeInsets.all(8),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: ('主要按钮'),
              type: FNButtonType.primary,
              iconName: FNIcons.iconBaseShare,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: ('次要按钮'),
              type: FNButtonType.secondary,
              iconName: FNIcons.iconBaseSetting,
              iconPosition: FNButtonIconPosition.right,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: ('线框按钮'),
              type: FNButtonType.hollowed,
              iconName: FNIcons.iconBaseHelp,
              iconPosition: FNButtonIconPosition.right,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: ('文字按钮'),
              type: FNButtonType.text,
              iconName: FNIcons.iconBaseSuccess,
              loadingSize: 18.0,
            ),
          ],
        ),
      ]),
    );
  }
}

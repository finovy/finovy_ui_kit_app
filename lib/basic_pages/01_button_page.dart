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
              type: FNButtonType.normal,
            ),
            FNUIButton(
              text: ('成功按钮'),
              type: FNButtonType.success,
            ),
            FNUIButton(
              text: ('错误按钮'),
              type: FNButtonType.danger,
            ),
            FNUIButton(
              text: ('警示按钮'),
              type: FNButtonType.warning,
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
              type: FNButtonType.normal,
            ),
            FNUIButton(
              text: ('成功按钮'),
              type: FNButtonType.success,
            ),
            FNUIButton(
              text: ('错误按钮'),
              type: FNButtonType.danger,
            ),
            FNUIButton(
              text: ('警示按钮'),
              type: FNButtonType.warning,
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
              type: FNButtonType.primary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('次要按钮'),
              type: FNButtonType.normal,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('成功按钮'),
              type: FNButtonType.success,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('错误按钮'),
              type: FNButtonType.danger,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: ('警示按钮'),
              type: FNButtonType.warning,
              status: ButtonStatus.loading,
            ),
          ],
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
            type: FNButtonType.normal,
          ),
        ]),
        const CodeHighlightCard(
          code: '''
          Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            disabled: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            disabled: true,
            text: ('次要按钮'),
            type: FNButtonType.normal,
          ),
        ])''',
        ),
        const FNUIText(
          text: '线框按钮',
          padding: EdgeInsets.all(8),
        ),
        Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            plain: true,
            border: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: true,
            border: true,
            text: ('次要按钮'),
            type: FNButtonType.normal,
          ),
        ]),
        const CodeHighlightCard(
          code: '''
          Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            plain: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: true,
            text: ('次要按钮'),
            type: FNButtonType.normal,
          ),
        ])''',
        ),
        const FNUIText(
          text: '文字按钮',
          padding: EdgeInsets.all(8),
        ),
        Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            plain: true,
            border: false,
            size: FNButtonSize.normal,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: true,
            border: false,
            size: FNButtonSize.normal,
            text: ('主要按钮'),
            type: FNButtonType.success,
          ),
        ]),
        const CodeHighlightCard(
          code: '''
          Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            plain: true,
            border: false,
            size: FNButtonSize.normal,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: true,
            border: false,
            size: FNButtonSize.normal,
            text: ('主要按钮'),
            type: FNButtonType.success,
          ),
        ])''',
        ),
        const FNUIText(
          text: '大尺寸按钮',
          padding: EdgeInsets.all(8),
        ),
        Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            plain: true,
            border: true,
            block: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: false,
            border: false,
            block: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: true,
            border: false,
            block: true,
            size: FNButtonSize.normal,
            text: ('主要按钮'),
            type: FNButtonType.success,
          ),
          FNUIButton(
            text: ('默认按钮'),
          ),
        ]),
        const CodeHighlightCard(
          code: '''
          Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            plain: true,
            border: true,
            block: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: false,
            border: false,
            block: true,
            text: ('主要按钮'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            plain: true,
            border: false,
            block: true,
            size: FNButtonSize.normal,
            text: ('主要按钮'),
            type: FNButtonType.success,
          ),
          FNUIButton(
            text: ('默认按钮'),
          ),
        ])''',
        ),
      ]),
    );
  }
}

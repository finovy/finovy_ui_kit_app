import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button'),
        centerTitle: true,
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        FNUIText(
          text: tr('Button.normal_status'),
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: tr('Button.primary'),
              type: FNButtonType.primary,
            ),
            FNUIButton(
              text: tr('Button.secondary'),
              type: FNButtonType.secondary,
            ),
            FNUIButton(
              text: tr('Button.hairlineButton'),
              type: FNButtonType.hollowed,
            ),
            FNUIButton(
              text: tr('Button.link'),
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
              text: tr('Button.primary'),
              type: FNButtonType.primary,
            ),
            FNUIButton(
              text: tr('Button.secondary'),
              type: FNButtonType.secondary,
            ),
            FNUIButton(
              text: tr('Button.hairlineButton'),
              type: FNButtonType.hollowed,
            ),
            FNUIButton(
              text: tr('Button.link'),
              type: FNButtonType.text,
            ),
          ],
        )''',
        ),
        FNUIText(
          text: tr('Button.loading_status'),
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: tr('Button.primary'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.primary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: tr('Button.secondary'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.secondary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: tr('Button.hairlineButton'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.hollowed,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: tr('Button.link'),
              loadingText: tr('Button.loadingText'),
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
              text: tr('Button.primary'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.primary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: tr('Button.secondary'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.secondary,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: tr('Button.hairlineButton'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.hollowed,
              status: ButtonStatus.loading,
            ),
            FNUIButton(
              text: tr('Button.link'),
              loadingText: tr('Button.loadingText'),
              type: FNButtonType.text,
              status: ButtonStatus.loading,
            ),
          ],
        )''',
        ),
        FNUIText(
          text: tr('Button.disabled_status'),
          margin: EdgeInsets.symmetric(vertical: 15),
        ),
        Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.primary'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.secondary'),
            type: FNButtonType.secondary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.hairlineButton'),
            type: FNButtonType.hollowed,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.link'),
            type: FNButtonType.text,
          ),
        ]),
        const CodeHighlightCard(
          code: '''
          Wrap(spacing: 20.0, runSpacing: 20.0, children: <Widget>[
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.primary'),
            type: FNButtonType.primary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.secondary'),
            type: FNButtonType.secondary,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.hairlineButton'),
            type: FNButtonType.hollowed,
          ),
          FNUIButton(
            status: ButtonStatus.unavailable,
            text: tr('Button.link'),
            type: FNButtonType.text,
          ),
        ])''',
        ),
        FNUIText(
          text: tr('Button.custom_status'),
          padding: EdgeInsets.all(8),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIButton(
              text: tr('Button.primary'),
              type: FNButtonType.primary,
              iconName: FNIcons.iconBaseShare,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: tr('Button.secondary'),
              type: FNButtonType.secondary,
              iconName: FNIcons.iconBaseSetting,
              iconPosition: FNButtonIconPosition.right,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: tr('Button.hairlineButton'),
              type: FNButtonType.hollowed,
              iconName: FNIcons.iconBaseHelp,
              iconPosition: FNButtonIconPosition.right,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: tr('Button.link'),
              type: FNButtonType.text,
              iconName: FNIcons.iconBaseSuccess,
              loadingSize: 18.0,
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
              text: tr('Button.primary'),
              type: FNButtonType.primary,
              iconName: FNIcons.iconBaseShare,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: tr('Button.secondary'),
              type: FNButtonType.secondary,
              iconName: FNIcons.iconBaseSetting,
              iconPosition: FNButtonIconPosition.right,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: tr('Button.hairlineButton'),
              type: FNButtonType.hollowed,
              iconName: FNIcons.iconBaseHelp,
              iconPosition: FNButtonIconPosition.right,
              loadingSize: 18.0,
            ),
            FNUIButton(
              text: tr('Button.link'),
              type: FNButtonType.text,
              iconName: FNIcons.iconBaseSuccess,
              loadingSize: 18.0,
            ),
          ],
        )''',
        )
      ]),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class IconPage extends StatelessWidget {
  const IconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialStatesController statesController = MaterialStatesController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon'),
        centerTitle: true,
      ),
      body: ListView(children: [
        const FNUIText(
          text: 'icon button',
          padding: EdgeInsets.all(8),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            SizedBox(
              width: 180,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: FNUIButton(
                  text: tr('Button.hairlineButton'),
                  type: FNButtonType.hollowed,
                  iconName: FNIcons.iconBaseHelp,
                  iconPosition: FNButtonIconPosition.left,
                  loadingSize: 18.0,
                ),
              ),
            ),
          ],
        ),
        const CodeHighlightCard(
          code: '''
          Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            SizedBox(
              width: 180,
              child: FNUIButton(
                text: tr('Button.hairlineButton'),
                type: FNButtonType.hollowed,
                iconName: FNIcons.iconBaseHelp,
                iconPosition: FNButtonIconPosition.left,
                loadingSize: 18.0,
              ),
            ),
          ],
        )
          ''',
        ),
        const FNUIText(
          text: 'all icons',
          padding: EdgeInsets.all(8),
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIIcon.name(
              Icons.chat,
              color: Colors.blue,
              size: 32.0,
            ),
            FNUIIcon.name(
              Icons.chat,
              color: Colors.green,
              size: 32.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSuccess,
              color: FNColors.green,
              size: 32.0,
            )
          ],
        ),
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIIcon.name(
              FNIcons.iconBaseBack,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseUnfold,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseFold,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseToTop,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseToBottom,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseDrag,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseHelp,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseCopy,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseDownload,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSearch,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseAdd,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseFiltter,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEdit,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEmal,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseMessage,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSetting,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEyeoPen,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEyeHide,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseNotice,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseShare,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSort,
              size: 18.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseService,
              size: 18.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseLanguage,
              size: 18.0,
              color: FNColors.primary,
            ),
          ],
        ),
        const CodeHighlightCard(
          code: '''Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: <Widget>[
            FNUIIcon.name(
              FNIcons.iconBaseBack,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseUnfold,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseFold,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseToTop,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseToBottom,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseDrag,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseHelp,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseCopy,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseDownload,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSearch,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseAdd,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseFiltter,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEdit,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEmal,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseMessage,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSetting,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEyeoPen,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseEyeHide,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseNotice,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseShare,
              size: 24.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseSort,
              size: 18.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseService,
              size: 18.0,
            ),
            FNUIIcon.name(
              FNIcons.iconBaseLanguage,
              size: 18.0,
              color: FNColors.primary,
            ),
          ],
        )''',
        ),
      ]),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialStatesController statesController = MaterialStatesController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        centerTitle: true,
      ),
      body: ListView(children: [
        const FNUIText(
          text: 'image default',
          padding: EdgeInsets.all(8),
        ),
        FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 100,
        ),
        const CodeHighlightCard(
          code: '''FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
        )''',
        ),
        const FNUIText(
          text: 'image cover',
          padding: EdgeInsets.all(8),
        ),
        FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        const CodeHighlightCard(
          code: '''FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.cover,
        )''',
        ),
        const FNUIText(
          text: 'image contain',
          padding: EdgeInsets.all(8),
        ),
        FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.contain,
        ),
        const CodeHighlightCard(
          code: '''FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.contain,
        )''',
        ),
        const FNUIText(
          text: 'image fitHeight',
          padding: EdgeInsets.all(8),
        ),
        FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.fitHeight,
        ),
        const CodeHighlightCard(
          code: '''FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.fitHeight,
        )''',
        ),
        const FNUIText(
          text: 'image fitWidth',
          padding: EdgeInsets.all(8),
        ),
        FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.fitWidth,
        ),
        const CodeHighlightCard(
          code: '''FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.fitWidth,
        )''',
        ),
        const FNUIText(
          text: 'image fill',
          padding: EdgeInsets.all(8),
        ),
        FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.fill,
        ),
        const CodeHighlightCard(
          code: '''FNUIImage(
          tr('App.logo'),
          width: 100,
          height: 30,
          fit: BoxFit.fill,
        )''',
        ),
      ]),
    );
  }
}

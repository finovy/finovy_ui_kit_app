import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            tr("Input.general"),
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: tr("Input.hint"),
        ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            tr("Style.hairline"),
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          ),
        ),
        const CodeHighlightCard(
          code: '''
         FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            tr("Style.hairline"),
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
          ),
        ),
        const CodeHighlightCard(
          code: '''
         FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'errorText',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            errorBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            errorText: 'error text',
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            errorBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            errorText: '这是一个错误提示',
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Icon',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Icon(right)',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.close),
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.close),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            tr("disabled"),
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300]!)),
            enabled: false,
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: tr("Input.hint"),
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            enabled: false,
          ),
        ''',
        ),
      ]),
    );
  }
}

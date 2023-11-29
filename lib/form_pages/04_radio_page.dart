import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '最基本的用法',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 100,
          child: FNUIRadio(
            actions: ['apple🍎', 'watermelon🍉'],
            onChanged: (val) {
              print(val);
            },
          ),
        ),
        const CodeHighlightCard(
          code: '''
       Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: 100,
          child: FNUIRadio(
            actions: ['apple🍎', 'watermelon🍉'],
            onChanged: (val) {
              print(val);
            },
          ),
        ),
        ''',
        ),
      ]),
    );
  }
}

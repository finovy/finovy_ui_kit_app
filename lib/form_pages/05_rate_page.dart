import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class RatePage extends StatelessWidget {
  const RatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rate评分'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '可点',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNRate(
            isReadOnly: false,
          ),
        ),
        const CodeHighlightCard(
          code: '''
         FNRate(
            isReadOnly: false,
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '只读',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNRate(
            starCount: 10,
            rating: 5,
          ),
        ),
        const CodeHighlightCard(
          code: '''
          FNRate(
            starCount: 10,
            rating: 5,
          ),
        ''',
        ),
      ]),
    );
  }
}

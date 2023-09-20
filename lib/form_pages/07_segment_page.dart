import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class SegmentPage extends StatefulWidget {
  const SegmentPage({super.key});

  @override
  State<SegmentPage> createState() => _SegmentPageState();
}

class _SegmentPageState extends State<SegmentPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segment分栏'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '基本用法',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUISegment(
            width: 100,
            titles: ['apple', 'banana', 'watermelon'],
            currentIndex: _currentIndex,
            onChangeCallBack: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUISegment(
            width: 100,
            titles: ['apple', 'banana', 'watermelon'],
            currentIndex: _currentIndex,
            onChangeCallBack: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ''',
        ),
      ]),
    );
  }
}

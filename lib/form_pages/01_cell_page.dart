import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class CellPage extends StatelessWidget {
  const CellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cell'),
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
        FNUICell(
          callBack: () => {},
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 18.0,
          ),
          title: 'cell测试',
          titleStyle: const TextStyle(fontSize: 16),
        ),
        const CodeHighlightCard(
          code: '''
       FNUICell(
          callBack: () => {},
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 18.0,
          ),
          title: 'cell测试',
          titleStyle: const TextStyle(fontSize: 16),
        ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '显示下划线',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        FNUICell(
          callBack: () => {},
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 18.0,
          ),
          title: 'cell测试',
          titleStyle: const TextStyle(fontSize: 16),
          showLine: true,
          lineColor: Colors.grey[200],
        ),
        const CodeHighlightCard(
          code: '''
        FNUICell(
          callBack: () => {},
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 18.0,
          ),
          title: 'cell测试',
          titleStyle: const TextStyle(fontSize: 16),
          showLine: true,
          lineColor: Colors.grey[200],
        ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '显示下划线和箭头',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        FNUICell(
          callBack: () => {},
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 18.0,
          ),
          title: 'cell测试',
          titleStyle: const TextStyle(fontSize: 16),
          showArrow: true,
          arrowSize: 24,
          arrowColor: Colors.grey[400],
          showLine: true,
          lineColor: Colors.grey[200],
        ),
        const CodeHighlightCard(
          code: '''
        FNUICell(
          callBack: () => {},
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 18.0,
          ),
          title: 'cell测试',
          titleStyle: const TextStyle(fontSize: 16),
          showArrow: true,
          arrowSize: 24,
          arrowColor: Colors.grey[400],
          showLine: true,
          lineColor: Colors.grey[200],
        ),
        ''',
        ),
      ]),
    );
  }
}

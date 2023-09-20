import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cell单元格'),
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
        FNUITable(
          dataHeaderList: ['name', 'age', 'gender'],
          dataList: [],
        ),
        const CodeHighlightCard(
          code: '''
        FNUITable(
          dataHeaderList: ['name', 'age', 'gender'],
          dataList: [],
        ),
        ''',
        ),
      ]),
    );
  }
}

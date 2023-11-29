import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  List<int> _indexSelected = [];

  List<Widget> get singleCheck {
    return [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          '单选',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      SizedBox(
        height: 220,
        child: FNUICheckBox(
          checkBoxType: FNUICheckBoxType.single,
          checkBoxStyle: FNUICheckBoxStyle.action,
          actions: const [
            '选项一',
            '选项二',
            '选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长',
            '选项四'
          ],
          selectCallback: (List<int> index) {
            setState(() {
              _indexSelected = index;
            });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FNUIText(text: '选中了：${_indexSelected.toString()}'),
      ),
    ];
  }

  List<Widget> get multiCheck {
    return [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          '多选',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      SizedBox(
        height: 220,
        child: FNUICheckBox(
          checkBoxType: FNUICheckBoxType.multi,
          checkBoxStyle: FNUICheckBoxStyle.action,
          actions: const [
            '选项一',
            '选项二',
            '选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长',
            '选项四'
          ],
          selectCallback: (List<int> index) {
            setState(() {
              _indexSelected = index;
            });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FNUIText(text: '选中了：${_indexSelected.toString()}'),
      ),
    ];
  }

  List<Widget> get cellActionCheck {
    return [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          '多选，列表项样式，带标题，箭头，选中时为 “ ◉ ”',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
      SizedBox(
        height: 220,
        child: FNUICheckBox(
          checkBoxType: FNUICheckBoxType.multi,
          checkBoxStyle: FNUICheckBoxStyle.cell,
          actions: const [
            '选项一',
            '选项二',
            '选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长',
            '选项四'
          ],
          selectCallback: (List<int> index) {
            setState(() {
              _indexSelected = index;
            });
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FNUIText(text: '选中了：${_indexSelected.toString()}'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox'),
        centerTitle: true,
      ),
      body: ListView(children: [
        ...singleCheck,
        const CodeHighlightCard(
          code: '''
        SizedBox(
          height: 220,
          child: FNUICheckBox(
            checkBoxType: FNUICheckBoxType.single,
            checkBoxStyle: FNUICheckBoxStyle.action,
            actions: const [
              '选项一',
              '选项二',
              '选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长',
              '选项四'
            ],
            selectCallback: (List<int> index) {
              setState(() {
                _indexSelected = index;
              });
            },
          ),
        ),
        ''',
        ),
        ...multiCheck,
        const CodeHighlightCard(
          code: '''
        SizedBox(
          height: 220,
          child: FNUICheckBox(
            checkBoxType: FNUICheckBoxType.multi,
            checkBoxStyle: FNUICheckBoxStyle.action,
            actions: const [
              '选项一',
              '选项二',
              '选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长',
              '选项四'
            ],
            selectCallback: (List<int> index) {
              setState(() {
                _indexSelected = index;
              });
            },
          ),
        ),
        ''',
        ),
        ...cellActionCheck,
        const CodeHighlightCard(
          code: '''
        SizedBox(
          height: 220,
          child: FNUICheckBox(
            checkBoxType: FNUICheckBoxType.multi,
            checkBoxStyle: FNUICheckBoxStyle.cell,
            actions: const [
              '选项一',
              '选项二',
              '选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长选项超长',
              '选项四'
            ],
            selectCallback: (List<int> index) {
              setState(() {
                _indexSelected = index;
              });
            },
          ),
        ),
        ''',
        ),
      ]),
    );
  }
}

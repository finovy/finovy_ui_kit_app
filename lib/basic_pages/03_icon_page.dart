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
        title: const Text('icon button测试'),
        centerTitle: true,
      ),
      body: ListView(children: [
        const FNUIText(
          text: 'icon按钮',
          padding: EdgeInsets.all(8),
        ),
        const FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.available,
          icon: Icon(Icons.add),
          text: 'icon主要按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.main 状态:ButtonStatus.available
FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.available,
          icon: Icon(Icons.add),
          text: 'icon主要按钮',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.available,
          icon: Icon(Icons.add),
          text: 'icon次要按钮',
          margin: EdgeInsets.all(8),
        ),
        const FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.available,
          icon: Icon(Icons.add),
          text: 'icon文字按钮',
          margin: EdgeInsets.all(8),
        ),
      ]),
    );
  }
}

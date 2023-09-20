import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialStatesController statesController = MaterialStatesController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('button测试'),
        centerTitle: true,
      ),
      body: ListView(children: [
        const FNUIText(
          text: '正常状态',
          padding: EdgeInsets.all(8),
        ),
        const FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.available,
          text: '主要按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.main 状态:ButtonStatus.available
FNUIButton(
            buttonType: ButtonType.main,
            status: ButtonStatus.available,
            text: '主要按钮',
            margin: EdgeInsets.all(8),
            )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.available,
          text: '次要按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.second 状态:ButtonStatus.available
FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.available,
          text: '次要按钮',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.available,
          text: '文字按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.text 状态:ButtonStatus.available
FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.available,
          text: '文字按钮',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIText(
          text: 'loading状态',
          padding: EdgeInsets.all(8),
        ),
        const FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.loading,
          text: '主要按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.main 状态:ButtonStatus.loading
FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.loading,
          text: '主要按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.loading,
          text: '次要按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.second 状态:ButtonStatus.loading
FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.loading,
          text: '次要按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.loading,
          text: '文字按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.text 状态:ButtonStatus.loading
FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.loading,
          text: '文字按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIText(
          text: '禁用状态',
          padding: EdgeInsets.all(8),
        ),
        const FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.unavailable,
          text: '主要按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.text 状态:ButtonStatus.unavailable
FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.loading,
          text: '文字按钮',
          loadingText: '加载中',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.unavailable,
          text: '次要按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.second 状态:ButtonStatus.unavailable
FNUIButton(
          buttonType: ButtonType.second,
          status: ButtonStatus.unavailable,
          text: '次要按钮',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.unavailable,
          text: '文字按钮',
          margin: EdgeInsets.all(8),
        ),
        const CodeHighlightCard(
          code: '''// 按钮创建示例 类型：ButtonType.text 状态:ButtonStatus.unavailable
FNUIButton(
          buttonType: ButtonType.text,
          status: ButtonStatus.unavailable,
          text: '文字按钮',
          margin: EdgeInsets.all(8),
        )''',
        ),
        const FNUIText(
          text: '控制器控制按钮状态',
          padding: EdgeInsets.all(8),
        ),
        FNUIButton(
          buttonType: ButtonType.main,
          status: ButtonStatus.available,
          text: '主要按钮',
          statesController: statesController,
          onTap: () {
            statesController.update(MaterialState.disabled, true);
          },
          margin: const EdgeInsets.all(8),
        ),
        SizedBox(
          height: 60,
          child: FNUIRadio(
            actions: const [
              '123',
              '456',
              '789',
              '111',
              '222',
              '3333',
              '4444',
              '555'
            ],
            onChanged: (index) {
              if (kDebugMode) {
                print("选中了:$index");
              }
            },
          ),
        ),
      ]),
    );
  }
}

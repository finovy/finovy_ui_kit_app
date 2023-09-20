import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input输入框'),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: '请输入内容',
        ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '有边框',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          ),
        ),
        const CodeHighlightCard(
          code: '''
         FNUITextField(
            hintText: '请输入内容',
            enabledBorder: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '全边框',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
          ),
        ),
        const CodeHighlightCard(
          code: '''
         FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '显示errorText',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            errorBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: Colors.red)),
            errorText: '这是一个错误提示',
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: '请输入内容',
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
            '左边加入图标',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            prefixIcon: Icon(Icons.search),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '右边加入图标',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.close),
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUITextField(
            hintText: '请输入内容',
            enabledBorder: UnderlineInputBorder(),
            focusedBorder: UnderlineInputBorder(),
            suffixIcon: Icon(Icons.close),
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '禁用',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUITextField(
            hintText: '请输入内容',
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
            hintText: '请输入内容',
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

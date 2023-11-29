import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '输入模式',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUIForm(
            required: true,
            title: '标题标题标题标题标题标题标题标题标题标题标题标题',
            // errorText: '内容不能为空',
            inputHintText: '请输入',
            // inputText: '内容内容',
            fieldCallBack: (value) {},
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUIForm(
            required: true,
            title: '标题标题标题标题标题标题标题标题标题标题标题标题',
            // errorText: '内容不能为空',
            inputHintText: '请输入',
            // inputText: '内容内容',
            fieldCallBack: (value) {},
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '单文本框/标题+内容+icon-有内容',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUIForm(
            formType: FormType.normal,
            required: true,
            title: '标题',
            inputText: '这是内容',
            clickCallBack: () {},
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUIForm(
            formType: FormType.normal,
            required: true,
            title: '标题',
            inputText: '这是内容',
            clickCallBack: () {},
          ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '只读模式',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: FNUIForm(
            formType: FormType.normal,
            readOnly: true,
            required: true,
            title: '标题',
            inputText: '这是内容',
            clickCallBack: () {},
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUIForm(
          formType: FormType.normal,
          readOnly: true,
          required: true,
          title: '标题',
          inputText: '这是内容',
          clickCallBack: () {},
        ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '错误提示',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const FNUIForm(
            formType: FormType.input,
            required: false,
            title: '标题',
            inputHintText: '请输入',
            errorText: '错误提示',
          ),
        ),
        const CodeHighlightCard(
          code: '''
       FNUIForm(
          formType: FormType.input,
          required: false,
          title: '标题',
          inputHintText: '请输入',
          errorText: '错误提示',
        ),
        ''',
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '多行文本输入',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: const FNUIForm(
            formType: FormType.multiLines,
            maxLength: 100,
            inputHintText: '说说你的建议或遇到的问题',
            errorText: '错误提示',
            // padding: const EdgeInsets.all(16),
          ),
        ),
        const CodeHighlightCard(
          code: '''
        FNUIForm(
          formType: FormType.multiLines,
          maxLength: 100,
          inputHintText: '说说你的建议或遇到的问题',
          errorText: '错误提示',
          // padding: const EdgeInsets.all(16),
        )
        ''',
        ),
      ]),
    );
  }
}

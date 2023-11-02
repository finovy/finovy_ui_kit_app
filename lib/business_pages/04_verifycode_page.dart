import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    /// 文本控制器（可以控制验证码输入框用于清空和赋值）
    TextEditingController textEditingController = TextEditingController();

    /// 错误控制器（用于验证码输入错误后动画效果 ）
    /// errorController!.add(ErrorAnimationType.shake);
    StreamController<ErrorAnimationType>? errorController;
    return Scaffold(
        appBar: AppBar(
          title: const Text('VerifyCode Page'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const FNUIText(text: "默认样式（重构后）"),
              FNUIVerifyCodeInput(
                length: 6,
                cursorColor: FNColors.primary,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    borderRadius: BorderRadius.circular(0),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    borderWidth: 1,
                    activeColor: const Color(0xFFdddddd),
                    selectedFillColor: Colors.white,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white),
              ),
              const CodeHighlightCard(
                code: '''FNUIVerifyCodeInput(
                length: 6,
                cursorColor: FNColors.primary,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.underline,
                    borderRadius: BorderRadius.circular(0),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    borderWidth: 1,
                    activeColor: const Color(0xFFdddddd),
                    selectedFillColor: Colors.white,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white),
              )''',
              ),
              const SizedBox(
                height: 10,
              ),
              const FNUIText(text: "圆角矩形样式（重构后）"),
              const SizedBox(
                height: 10,
              ),
              FNUIVerifyCodeInput(
                length: 6,
                cursorColor: FNColors.primary,
                keyboardType: TextInputType.number,
                controller: textEditingController,
                errorAnimationController: errorController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                ],
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(0),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    borderWidth: 1,
                    activeColor: FNColors.primary,
                    selectedFillColor: Colors.white,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white),
                onChanged: (value) => {
                  //此处为文本改变
                },
                onCompleted: (value) => {
                  //此处完成输入
                },
              ),
              const CodeHighlightCard(
                code: '''FNUIVerifyCodeInput(
                length: 6,
                cursorColor: FNColors.primary,
                keyboardType: TextInputType.number,
                controller: textEditingController,
                errorAnimationController: errorController,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp("[0-9]")),
                ],
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(0),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    borderWidth: 1,
                    activeColor: FNColors.primary,
                    selectedFillColor: Colors.white,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white),
                onChanged: (value) => {
                  //此处为文本改变
                },
                onCompleted: (value) => {
                  //此处完成输入
                },
              )''',
              ),
            ],
          ),
        ));
  }
}

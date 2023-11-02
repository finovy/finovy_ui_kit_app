import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog Page'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '无标题、单按钮',
              onTap: () => {
                    FNUIDialogManager.showSingleButtonDialog(context,
                        label: "知道了", message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息")
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showSingleButtonDialog(context,
                        label: "知道了",\n message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息")\n''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '有标题、单按钮',
              onTap: () => {
                    FNUIDialogManager.showSingleButtonDialog(context,
                        title: '标题',
                        label: "知道了",
                        message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息",
                        onTap: () => false)
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showSingleButtonDialog(context,
                        title: '标题',
                        label: "知道了",
                        message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息",
                        onTap: () => false)''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '有标题、双按钮',
              onTap: () => {
                    FNUIDialogManager.showConfirmDialog(
                      context,
                      title: '标题',
                      cancel: '取消',
                      confirm: '确定',
                      message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息",
                      // onConfirm: () => Navigator.pop(context),
                    )
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showConfirmDialog(
                      context,
                      title: '标题',
                      cancel: '取消',
                      confirm: '确定',
                      message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息",
                      // onConfirm: () => Navigator.pop(context),
                    )''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '有标题、有内容、双按钮、错误信息',
              onTap: () => {
                    FNUIDialogManager.showSingleButtonDialog(context,
                        label: "确定",
                        title: '标题内容',
                        warning: '错误文案展示/警示文案展示',
                        message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息。",
                        onTap: () => true)
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showSingleButtonDialog(context,
                        label: "确定",
                        title: '标题内容',
                        warning: '错误文案展示/警示文案展示',
                        message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息。",
                        onTap: () => true)''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '有标题、有内容、双按钮、有图标',
              onTap: () => {
                    FNUIDialogManager.showConfirmDialog(
                      context,
                      showIcon: true,
                      iconWidget: Image.asset(
                        'lib/assets/images/icon_checkbox_checked.png',
                        width: 20.0,
                        height: 20.0,
                        package: 'fn_ui_kit',
                      ),
                      title: "标题内容",
                      confirm: "确定",
                      cancel: "取消",
                      message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息。",
                      onCancel: () => true,
                      onConfirm: () => true,
                    )
                  }),
        ),
        const CodeHighlightCard(
          code: '''
  FNUIDialogManager.showConfirmDialog(
                      context,
                      showIcon: true,
                      iconWidget: Image.asset(
                        'lib/assets/images/icon_checkbox_checked.png',
                        width: 20.0,
                        height: 20.0,
                        package: 'fn_ui_kit',
                      ),
                      title: "标题内容",
                      confirm: "确定",
                      cancel: "取消",
                      message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息。",
                      onCancel: () => true,
                      onConfirm: () => true,
                    )''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '有标题、有内容、有多个action',
              onTap: () => {
                    FNUIDialogManager.showMoreButtonDialog(context,
                        actions: [
                          '选项一',
                          '选项二',
                          '选项三',
                        ],
                        title: '这是标题',
                        message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息。",
                        indexedActionClickCallback: (index) {
                      FNUIToast.show(
                        text: "$index",
                      );
                      return true;
                    })
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showMoreButtonDialog(context,
                        actions: [
                          '选项一',
                          '选项二',
                          '选项三',
                        ],
                        title: '这是标题',
                        message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息。",
                        indexedActionClickCallback: (index) {
                      SMUIToast.show(
                        text: "index",
                      );
                      return true;
                    })''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '有图标、有标题、有内容、有富文本',
              onTap: () => {
                    FNUIDialogManager.showConfirmDialog(
                      context,
                      cancel: "取消",
                      confirm: "确定",
                      title: "标题",
                      message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息",
                      messageWidget: Padding(
                        padding:
                            const EdgeInsets.only(top: 6, left: 24, right: 24),
                        // child: Html(
                        //     data:
                        //         "这是一条增使用标签修改文字颜色的demo<font color = '#8ac6d1'>我是带颜色的文字</font>，"),
                      ),
                      showIcon: true,
                      // onCancel: () => Navigator.pop(context),
                      // onConfirm: () => Navigator.pop(context),
                    )
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showConfirmDialog(
                      context,
                      cancel: "取消",
                      confirm: "确定",
                      title: "标题",
                      message: "辅助内容信息辅助内容信息辅助内容信息辅助内容信息辅助内容信息",
                      messageWidget: Padding(
                        padding:
                            const EdgeInsets.only(top: 6, left: 24, right: 24),
                        // child: Html(
                        //     data:
                        //         "这是一条增使用标签修改文字颜色的demo<font color = '#8ac6d1'>我是带颜色的文字</font>，"),
                      ),
                      showIcon: true,
                      // onCancel: () => Navigator.pop(context),
                      // onConfirm: () => Navigator.pop(context),
                    )''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '完全自定义',
              onTap: () => {
                    FNUIDialogManager.showCustomerDialog(context,
                        actions: [],
                        contentWidget:
                            Center(child: FNUIImage('icon_common_empty.png')))
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showCustomerDialog(context,
                        actions: [],
                        contentWidget:
                            Center(child: SMUIImage(KImagePath.commonEmpty)))''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '输入框对话框',
              onTap: () => {
                    FNUIDialogManager.showCustomerDialog(context,
                        contentWidget: FNCenterInputDialog(
                          title: '请输入分组名称',
                          hint: '最多八个字',
                          errorText: '请输入分组名称',
                          textFieldCallback: (String value) {
                            FNUIToast.show(
                              text: value,
                            );
                          },
                        ))
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showCustomerDialog(context,
                        contentWidget: SMCenterInputDialog(
                          title: '请输入分组名称',
                          hint: '最多八个字',
                          errorText: '请输入分组名称',
                          textFieldCallback: (String value) {
                            SMUIToast.show(
                              text: value,
                            );
                          },
                        ))''',
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FNUIButton(
              text: '密码输入框对话框',
              onTap: () => {
                    FNUIDialogManager.showCustomerDialog(context,
                        contentWidget: FNCenterInputDialog(
                          title: '身份信息校验',
                          message: '为确保本人的权益，我们需要对您的身份进行校验',
                          hint: '请输入密码',
                          errorText: '密码错误',
                          keyboardType: BaseKeyBoardType.password,
                          textFieldCallback: (String value) {},
                          confirmCallBack: (value) {
                            //返回false显示错误信息，返回true则关闭对话框
                            return false;
                          },
                        ))
                  }),
        ),
        const CodeHighlightCard(
          code: '''
SMUIDialogManager.showCustomerDialog(context,
                        contentWidget: SMCenterInputDialog(
                          title: '身份信息校验',
                          message: '为确保本人的权益，我们需要对您的身份进行校验',
                          hint: '请输入密码',
                          errorText: '密码错误',
                          keyboardType: BaseKeyBoardType.password,
                          textFieldCallback: (String value) {},
                          confirmCallBack: (value) {
                            //返回false显示错误信息，返回true则关闭对话框
                            return false;
                          },
                        ))''',
        ),
      ]),
    );
  }
}

/*
 * @description: 输入框-对话框
 * @author: Yman Chen
 * @time: 2023/5/18 17:36
 */
class FNCenterInputDialog extends StatefulWidget {
  final String? title;
  final String? message;
  final String hint;
  final String? content;
  final String? errorText;

  // 内容区域布局
  final TextAlign contentAlign;
  final int? maxLen;

  //输入内容回调
  final Function(String value) textFieldCallback;

  ///输入框类型
  final BaseKeyBoardType keyboardType;

  ///输入内容确认回调,若返回false，那么输入框下方显示错误信息，返回true，直接关闭对话框
  final bool Function(String value)? confirmCallBack;

  const FNCenterInputDialog({
    Key? key,
    this.title,
    this.message,
    required this.hint,
    this.content,
    this.errorText,
    this.contentAlign = TextAlign.left,
    this.maxLen,
    required this.textFieldCallback,
    this.keyboardType = BaseKeyBoardType.text,
    this.confirmCallBack,
  }) : super(key: key);

  @override
  createState() => _CenterInputDialogState();
}

class _CenterInputDialogState extends State<FNCenterInputDialog> {
  String _inputText = '';
  final List<String> _items = ['取消', '确定'];

  TextEditingController? _controller;

  bool _showError = false;

  @override
  void initState() {
    super.initState();
    _inputText = widget.content ?? '';
    _controller = TextEditingController.fromValue(TextEditingValue(
        text: _inputText,
        selection: TextSelection.fromPosition(TextPosition(
            affinity: TextAffinity.downstream, offset: _inputText.length))));
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 24),
        _getTitleItem(),
        _getMessageItem(),
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.only(left: 24, right: 24),
          child: Column(children: [
            FNUITextField(
                autoHeight: false,
                inputText: _inputText,
                maxLength: widget.maxLen ?? 26,
                contentPadding: widget.keyboardType == BaseKeyBoardType.password
                    ? EdgeInsets.zero
                    : const EdgeInsets.only(bottom: 10),
                textStyle: TextStyle(color: FNColors.textColor, fontSize: 16),
                hintText: widget.hint,
                hintStyle: TextStyle(
                  color: FNColors.textTipColor,
                  fontSize: 16,
                ),
                keyboardType: widget.keyboardType,
                obscuringCharacter:
                    widget.keyboardType == BaseKeyBoardType.password
                        ? '*'
                        : null,
                fieldCallBack: (val) {
                  _inputText = val;
                  _showError = false;
                  setState(() {});
                }),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: _showError ? FNColors.red : FNColors.lineColor,
                    width: 0.5,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: (widget.errorText != null && _showError),
              child: FNUIText(
                margin: const EdgeInsets.only(top: 8),
                color: FNColors.red,
                text: widget.errorText ?? '',
                alignment: Alignment.centerLeft,
                fontSize: 12,
              ),
            )
          ]),
        ),
        const SizedBox(height: 25),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: FNColors.lineColor,
                width: 0.5,
              ),
            ),
          ),
        ),
        _getActionItems(),
      ],
    );
  }

  Widget _getTitleItem() {
    if (widget.title == null || (widget.title ?? "").isEmpty) {
      return Container();
    } else {
      return Text(
        widget.title ?? "",
        style: TextStyle(
          color: FNColors.textColor,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      );
    }
  }

  Widget _getActionItems() {
    return Row(
      children: _items.map((res) {
        int index = _items.indexOf(res);
        return Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              switch (index) {
                case 1:
                  if (widget.confirmCallBack != null) {
                    bool confirm =
                        widget.confirmCallBack?.call(_inputText) ?? false;
                    if (confirm) {
                      Navigator.pop(context);
                    } else {
                      _showError = true;
                      setState(() {});
                    }
                  } else {
                    if (_inputText.trim().isNotEmpty) {
                      Navigator.pop(context);
                      widget.textFieldCallback(_inputText);
                    } else {
                      _showError = true;
                      setState(() {});
                    }
                  }
                  break;
                default:
                  Navigator.pop(context);
                  break;
              }
            },
            child: Container(
              height: 49,
              alignment: Alignment.center,
              decoration: index == 0
                  ? BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: FNColors.lineColor,
                          width: 0.5,
                        ),
                      ),
                    )
                  : null,
              child: Text(
                res,
                style: TextStyle(
                  color: index == 0
                      ? FNColors.textSecondaryColor
                      : FNColors.primary,
                  fontSize: 18,
                  fontWeight: index == 0 ? FontWeight.normal : FontWeight.w500,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  /*
   * @description: 构建内容提示语
   * @param
   * @return
   * @author: Yman Chen
   * @time: 2023/5/26 9:23
   */
  _getMessageItem() {
    if (widget.message == null || (widget.message ?? "").isEmpty) {
      return const SizedBox.shrink();
    } else {
      return FNUIText(
        text: widget.message ?? '',
        fontSize: 10,
        color: FNColors.textColor,
        padding: const EdgeInsets.only(
          top: 4,
        ),
      );
    }
  }
}

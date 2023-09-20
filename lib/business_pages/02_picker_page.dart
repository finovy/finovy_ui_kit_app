import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class PickerPage extends StatelessWidget {
  const PickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Picker Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            FNUIButton(
              // buttonType: ButtonType.main,
              status: ButtonStatus.available,
              text: '时间选择器 YYYY-MM-DD',
              // margin: const EdgeInsets.all(8),
              onTap: () => FNUIDatePicker.show(
                context: context,
                sheetHeight: 230,
                initialDateTime: DateTime.now(),
                minimumYear: 2020,
                maximumYear: 2024,
                onCancel: () => FNUIToast.show(text: '取消'),
                onConfirm: (DateTime dateTime) =>
                    FNUIToast.show(text: "选择了时间：${dateTime.toString()}"),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIDatePicker.show(
                context: context,
                sheetHeight: 230,
                initialDateTime: DateTime.now(),
                minimumYear: 2020,
                maximumYear: 2024,
                onCancel: () => FNUIToast.show(text: '取消'),
                onConfirm: (DateTime dateTime) =>
                    FNUIToast.show(text: "选择了时间：dateTime.toString()"),
              )''',
            ),
            SizedBox(
              height: 12,
            ),
            FNUIButton(
              // buttonType: ButtonType.main,
              status: ButtonStatus.available,
              text: '时间选择器(24H) HH:mm',
              // margin: const EdgeInsets.all(8),
              onTap: () => FNUIDatePicker.show(
                context: context,
                sheetHeight: 230,
                mode: CupertinoDatePickerMode.time,
                use24hFormat: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                onCancel: () => FNUIToast.show(text: '取消'),
                onConfirm: (DateTime dateTime) =>
                    FNUIToast.show(text: "选择了时间：${dateTime.toString()}"),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIDatePicker.show(
                context: context,
                sheetHeight: 230,
                mode: CupertinoDatePickerMode.time,
                use24hFormat: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                onCancel: () => FNUIToast.show(text: '取消'),
                onConfirm: (DateTime dateTime) =>
                    FNUIToast.show(text: "选择了时间：{dateTime.toString()}"),
              )''',
            ),
            SizedBox(
              height: 12,
            ),
            FNUIButton(
              // buttonType: ButtonType.main,
              status: ButtonStatus.available,
              text: '时间选择器 week:am/pm',
              // margin: const EdgeInsets.all(8),
              onTap: () => FNUIDatePicker.show(
                context: context,
                sheetHeight: 230,
                mode: CupertinoDatePickerMode.time,
                dateOrder: DatePickerDateOrder.dmy,
                use24hFormat: false,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                onCancel: () => FNUIToast.show(text: '取消'),
                onConfirm: (DateTime dateTime) =>
                    FNUIToast.show(text: "选择了时间：${dateTime.toString()}"),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIDatePicker.show(
                context: context,
                sheetHeight: 230,
                mode: CupertinoDatePickerMode.time,
                dateOrder: DatePickerDateOrder.dmy,
                use24hFormat: false,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                ),
                onCancel: () => FNUIToast.show(text: '取消'),
                onConfirm: (DateTime dateTime) =>
                    FNUIToast.show(text: "选择了时间：{dateTime.toString()}"),
              )''',
            ),
          ],
        ),
      ),
    );
  }
}

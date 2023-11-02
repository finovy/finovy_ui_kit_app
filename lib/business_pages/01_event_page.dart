import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class EventContainer extends StatelessWidget {
  const EventContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Event Container'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            FNUIEventContainer(
              // height: 60,
              // width: 200,
              alignment: Alignment.center,

              color: FNColors.red,
              onTap: () => FNUIToast.show(
                  text: 'Event Container clicked', align: ToastAlign.top),
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 60,
                color: FNColors.green,
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIEventContainer(
              alignment: Alignment.center,

              color: FNColors.red,
              onTap: () => {print("Event Container clicked")},
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                height: 60,
                color: FNColors.green,
              ),
            )''',
            ),
          ],
        ));
  }
}

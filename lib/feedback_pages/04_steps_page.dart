import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class StepsPage extends StatelessWidget {
  const StepsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Steps'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            FNUIText(text: tr("Steps.horizontal")),
            FNUISteps(
              active: 2,
              finishIconName: Icons.circle,
              activeIconName: Icons.check_circle,
              children: <FNStep>[
                FNStep(child: Text(tr("Steps.step1"))),
                FNStep(child: Text(tr("Steps.step2"))),
                FNStep(child: Text(tr("Steps.step3"))),
                FNStep(child: Text(tr("Steps.step4"))),
              ],
            ),
            const CodeHighlightCard(
              code: ''' FNUISteps(
              active: 2,
              finishIconName: Icons.circle,
              activeIconName: Icons.check_circle,
              children: <FNStep>[
                FNStep(child: Text(tr("Steps.step1"))),
                FNStep(child: Text(tr("Steps.step2"))),
                FNStep(child: Text(tr("Steps.step3"))),
                FNStep(child: Text(tr("Steps.step4"))),
              ],
            )''',
            ),
            FNUIText(text: tr("Steps.vertical")),
            FNUISteps(
              direction: Axis.vertical,
              active: 2,
              finishIconName: Icons.circle,
              activeIconName: Icons.check_circle,
              children: <FNStep>[
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step1")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-12 11:32')
                  ],
                )),
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step2")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-12 11:40')
                  ],
                )),
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step3")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-13 09:30')
                  ],
                )),
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step4")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-13 15:00')
                  ],
                )),
              ],
            ),
            const CodeHighlightCard(
              code: '''FNUISteps(
              direction: Axis.vertical,
              active: 2,
              finishIconName: Icons.circle,
              activeIconName: Icons.check_circle,
              children: <FNStep>[
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step1")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-12 11:32')
                  ],
                )),
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step2")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-12 11:40')
                  ],
                )),
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step3")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-13 09:30')
                  ],
                )),
                FNStep(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(tr("Steps.step4")),
                    SizedBox(
                      height: 12,
                    ),
                    const Text('2023-10-13 15:00')
                  ],
                )),
              ],
            )''',
            ),
          ],
        ));
  }
}

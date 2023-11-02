import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class StepsPage extends StatelessWidget {
  const StepsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Step Page'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            FNUIText(text: '步骤条(横向)'),
            FNUISteps(
              active: 2,
              finishIconName: Icons.circle,
              activeIconName: Icons.check_circle,
              children: <FNStep>[
                FNStep(child: Text('第一步')),
                FNStep(child: Text('第二步')),
                FNStep(child: Text('第三步')),
                FNStep(child: Text('第四步')),
              ],
            ),
            const CodeHighlightCard(
              code: '''FNUISteps(
              active: 2,
              finishIconName: Icons.circle,
              activeIconName: Icons.check_circle,
              children: <FNStep>[
                FNStep(child: Text('第一步')),
                FNStep(child: Text('第二步')),
                FNStep(child: Text('第三步')),
                FNStep(child: Text('第四步')),
              ],
            )''',
            ),
            FNUIText(text: '步骤条(纵向)'),
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
                    Text('开始申购'),
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
                    Text('等待确认净值'),
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
                    Text('确认成功'),
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
                    Text('完成申购'),
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
                    Text('开始申购'),
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
                    Text('等待确认净值'),
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
                    Text('确认成功'),
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
                    Text('完成申购'),
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

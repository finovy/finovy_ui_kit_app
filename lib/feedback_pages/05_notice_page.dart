import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class NoticeBarPage extends StatelessWidget {
  const NoticeBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NoticeBar Page'),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            FNUIText(text: 'icon+滚动'),
            FNUINoticeBar(
              scrollable: true,
              leftIconName: Icons.access_alarm,
              text:
                  'Rancher 为 DevOps 工程师提供了一个直观的用户界面来管理他们的服务容器,用户不需要深入了解 Kubernetes 概念就可以开始使用 Rancher',
            ),
            const CodeHighlightCard(
              code: '''FNUINoticeBar(
              scrollable: true,
              leftIconName: Icons.access_alarm,
              text:
                  'Rancher 为 DevOps 工程师提供了一个直观的用户界面来管理他们的服务容器,用户不需要深入了解 Kubernetes 概念就可以开始使用 Rancher',
            )''',
            ),
            FNUIText(text: '多行展示'),
            FNUINoticeBar(
              scrollable: false,
              wrapAble: true,
              text:
                  'Rancher 为 DevOps 工程师提供了一个直观的用户界面来管理他们的服务容器,用户不需要深入了解 Kubernetes 概念就可以开始使用 Rancher',
            ),
            const CodeHighlightCard(
              code: '''FNUINoticeBar(
              scrollable: false,
              wrapAble: true,
              text:
                  'Rancher 为 DevOps 工程师提供了一个直观的用户界面来管理他们的服务容器,用户不需要深入了解 Kubernetes 概念就可以开始使用 Rancher',
            )''',
            ),
            FNUIText(text: '可关闭'),
            FNUINoticeBar(
              mode: FNNoticeBarMode.closeable,
              scrollable: true,
              background: FNColors.green,
              text:
                  'Rancher 为 DevOps 工程师提供了一个直观的用户界面来管理他们的服务容器,用户不需要深入了解 Kubernetes 概念就可以开始使用 Rancher',
            ),
            const CodeHighlightCard(
              code: '''FNUINoticeBar(
              mode: FNNoticeBarMode.closeable,
              scrollable: true,
              background: FNColors.green,
              text:
                  'Rancher 为 DevOps 工程师提供了一个直观的用户界面来管理他们的服务容器,用户不需要深入了解 Kubernetes 概念就可以开始使用 Rancher',
            )''',
            ),
          ],
        ));
  }
}

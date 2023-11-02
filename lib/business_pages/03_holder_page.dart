import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class PlaceHolderPage extends StatelessWidget {
  const PlaceHolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder Page'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          children: [
            const FNUIEmptyWidget(
              state: EmptyWidgetState.nodata,
              title: '暂无数据',
            ),
            const Divider(),
            const CodeHighlightCard(
              code: '''FNUIEmptyWidget(
              state: EmptyWidgetState.nodata,
              title: '暂无数据',
            )''',
            ),
            FNUIEmptyWidget(
              state: EmptyWidgetState.noNetwork,
              title: '网络异常',
              onTapButton: () {},
              buttonTitle: '点击重试',
            ),
            const Divider(),
            const CodeHighlightCard(
              code: '''FNUIEmptyWidget(
              state: EmptyWidgetState.noNetwork,
              title: '网络异常',
              onTapButton: () {},
              buttonTitle: '点击重试',
            )''',
            ),
            FNUIEmptyWidget(
              state: EmptyWidgetState.noSearchResult,
              title: '没有搜索结果',
              optionWidget: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FNUIButton(
                        text: '去搜索',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FNUIButton(
                        text: '返回上一级',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIEmptyWidgetConfigure(
              optionWidget: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FNUIButton(
                        text: '去搜索',
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FNUIButton(
                        text: '返回上一级',
                      ),
                    ),
                  ],
                ),
              ),
              child: FNUIEmptyWidget(
                state: EmptyWidgetState.noSearchResult,
                title: '没有搜索结果',
              ),
            )''',
            ),
          ],
        )
      ]),
    );
  }
}

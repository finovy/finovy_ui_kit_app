import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid Page'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: '普通用法'),
            ),
            FNUIGrid(
              columnNum: 4,
              square: true,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '测试文本',
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIGrid(
              columnNum: 3,
              children: List<FlanGridItem>.generate(
                6,
                    (int index) => FlanGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '测试文本',
                ),
              ),
            )''',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: '有间隔'),
            ),
            FNUIGrid(
              columnNum: 4,
              gutter: 10.0,
              square: true,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '测试文本',
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIGrid(
              columnNum: 4,
              gutter: 10.0,
              square: true,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '测试文本',
                ),
              ),
            )''',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: '无边框'),
            ),
            FNUIGrid(
              columnNum: 4,
              gutter: 0.0,
              square: false,
              border: false,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '测试文本',
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIGrid(
              columnNum: 4,
              gutter: 0.0,
              square: false,
              border: false,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '测试文本',
                ),
              ),
            )''',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: '内容横向排列'),
            ),
            FNUIGrid(
              columnNum: 4,
              gutter: 5.0,
              direction: Axis.horizontal,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '文本',
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIGrid(
              columnNum: 4,
              gutter: 5.0,
              direction: Axis.horizontal,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: '文本',
                ),
              ),
            )''',
            ),
          ],
        ));
  }
}

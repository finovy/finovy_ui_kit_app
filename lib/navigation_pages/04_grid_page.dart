import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: tr("Grid.common")),
            ),
            FNUIGrid(
              columnNum: 4,
              square: true,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: tr("Grid.text"),
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIGrid(
              columnNum: 4,
              square: true,
              children: List<FNGridItem>.generate(
                8,
                (int index) => FNGridItem(
                  key: ValueKey<int>(index),
                  iconName: Icons.image,
                  text: tr("Grid.text"),
                ),
              ),
            )''',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: tr("Grid.gap")),
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
                  text: tr("Grid.text"),
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
                  text: tr("Grid.text"),
                ),
              ),
            )''',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: tr("Grid.frameless")),
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
                  text: tr("Grid.text"),
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
                  text: tr("Grid.text"),
                ),
              ),
            )''',
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FNUIText(text: tr("Grid.horizontal")),
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
                  text: tr("Grid.text"),
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
                  text: tr("Grid.text"),
                ),
              ),
            )''',
            ),
          ],
        ));
  }
}

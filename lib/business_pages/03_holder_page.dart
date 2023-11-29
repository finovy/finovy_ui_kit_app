import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import '../components/code_light/code.dart';

class PlaceHolderPage extends StatelessWidget {
  const PlaceHolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(
          children: [
            FNUIEmptyWidget(
              state: EmptyWidgetState.nodata,
              title: tr("Empty.description"),
            ),
            const Divider(),
            const CodeHighlightCard(
              code: '''FNUIEmptyWidget(
              state: EmptyWidgetState.nodata,
              title: tr("Empty.description"),
            )''',
            ),
            FNUIEmptyWidget(
              state: EmptyWidgetState.noNetwork,
              title: tr("Empty.network"),
              onTapButton: () {},
              buttonTitle: tr("ActionBar.clickButton"),
            ),
            const Divider(),
            const CodeHighlightCard(
              code: '''FNUIEmptyWidget(
              state: EmptyWidgetState.noNetwork,
              title: tr("Empty.network"),
              onTapButton: () {},
              buttonTitle: tr("ActionBar.clickButton"),
            )''',
            ),
            FNUIEmptyWidget(
              state: EmptyWidgetState.noSearchResult,
              title: tr("Empty.search"),
              optionWidget: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FNUIButton(
                        text: tr("search"),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FNUIButton(
                        text: tr("back"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const CodeHighlightCard(
              code: '''FNUIEmptyWidget(
              state: EmptyWidgetState.noSearchResult,
              title: tr("Empty.search"),
              optionWidget: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FNUIButton(
                        text: tr("search"),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: FNUIButton(
                        text: tr("back"),
                      ),
                    ),
                  ],
                ),
              ),
            )''',
            ),
          ],
        )
      ]),
    );
  }
}

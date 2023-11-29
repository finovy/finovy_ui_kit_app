import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';
import 'package:fn_ui_kit/fn_ui_kit.dart';

import 'expand.dart';

/*
* @description:     代码高亮展示面板
* param:
* @return:
* @author:          novice.cai
* @time:            2023/9/14 18:02
*/
class CodeHighlightCard extends StatefulWidget {
  final String code;
  final bool? isExpanded;
  final String? title;
  final Function? onCopyHandler;
  final Function? onTapHandler;
  const CodeHighlightCard({
    super.key,
    required this.code,
    this.isExpanded = false,
    this.title = '示例代码',
    this.onCopyHandler,
    this.onTapHandler,
  });

  @override
  State<CodeHighlightCard> createState() => _CodeHighlightCardState();
}

class _CodeHighlightCardState extends State<CodeHighlightCard> {
  @override
  Widget build(BuildContext context) {
    return ExpansionCard(
      cardDecoration: BoxDecoration(color: FNColors.lineColor),
      isExpanded: widget.isExpanded ?? false,
      tlText: tr("HighLight.title"),
      trText: '代码拷贝',
      trWidget: FNUIEventContainer(
        onTap: () async {
          if (widget.onCopyHandler == null) {
            Clipboard.setData(ClipboardData(text: widget.code)).then((value) =>
                FNUIToast.show(
                    text: tr("HighLight.tip"), align: ToastAlign.top));
          } else {
            widget.onCopyHandler?.call();
          }
        },
        child: const Icon(
          Icons.copy_all,
          size: 16,
        ),
      ),
      onTap: (isExpanded) => debugPrint('button.....$isExpanded'),
      contentWidget: <Widget>[
        FittedBox(
          alignment: Alignment.topLeft,
          child: SyntaxView(
            code: widget.code,
            syntax: Syntax.DART,
            syntaxTheme: SyntaxTheme.vscodeDark(),
            fontSize: 12.0,
            withZoom: false,
            withLinesCount: true,
            expanded: false,
          ),
        )
      ],
    );
  }
}

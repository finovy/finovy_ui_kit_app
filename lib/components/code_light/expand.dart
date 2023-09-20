import 'package:flutter/material.dart';

import 'custom.dart';
// import './expansion_custom.dart';

/* 折叠卡片 */
class ExpansionCard extends StatefulWidget {
  final EdgeInsets? margin; // 外边距
  final Decoration? cardDecoration; // 卡片样式
  final Function? onTap; // 点击标题的回调
  final String? tlText; // 左侧标题
  final TextStyle? tlStyle;
  final Widget? tlWidget;
  final String? trText; // 右侧标题
  final TextStyle? trStyle;
  final Widget? trWidget;
  final List<Widget>? contentWidget; // 折叠内容
  final bool? isExpanded; //是否展开
  const ExpansionCard(
      {Key? key,
      this.margin,
      this.cardDecoration,
      this.onTap,
      this.tlText,
      this.tlStyle,
      this.tlWidget,
      this.trText,
      this.trStyle,
      this.trWidget,
      this.contentWidget,
      this.isExpanded})
      : super(key: key);

  @override
  _ExpansionCardState createState() => _ExpansionCardState();
}

class _ExpansionCardState extends State<ExpansionCard> {
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    isExpanded = widget.isExpanded ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: widget.cardDecoration ??
          const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              isExpanded = !isExpanded;
              if (mounted) {
                setState(() {});
              }

              widget.onTap?.call(isExpanded);
            },
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  widget.tlWidget ??
                      Text(
                        widget.tlText ?? "",
                        style: widget.tlStyle ??
                            const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                  Row(
                    children: <Widget>[
                      widget.trWidget ??
                          Text(widget.trText ?? "",
                              style: widget.trStyle ??
                                  const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                      const SizedBox(width: 4),
                      Icon(
                        isExpanded ? Icons.remove : Icons.add,
                        color: Colors.black,
                        size: 18,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          ExpansionCustom(
            initiallyExpanded: false,
            isExpanded: isExpanded,
            children: <Widget>[
              const Divider(height: 10),
              Column(
                children: widget.contentWidget ?? [Container()],
              )
            ],
          )
        ],
      ),
    );
  }
}

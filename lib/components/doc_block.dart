import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

EdgeInsets defaultDocBlockPadding =
    EdgeInsets.only(left: 16.0.w, right: 16.0.w);
EdgeInsets defaultSubTitlePadding =
    EdgeInsets.only(top: 24.0.w, bottom: 16.0.w);

class DocBlock extends StatelessWidget {
  DocBlock({
    Key? key,
    this.title,
    this.size = 14.0,
    this.card = false,
    EdgeInsets? padding,
    this.children = const <Widget>[],
  })  : padding = padding ?? defaultDocBlockPadding,
        super(key: key);

  const DocBlock.noPadding({
    Key? key,
    this.title,
    this.size,
    this.card = false,
    this.children = const <Widget>[],
  })  : padding = EdgeInsets.zero,
        super(key: key);

  final String? title;
  final double? size;
  final bool card;
  final EdgeInsets padding;
  final List<Widget> children;

  EdgeInsets get subTitlePadding {
    if (padding == EdgeInsets.zero) {
      return defaultSubTitlePadding + defaultDocBlockPadding;
    }
    return defaultSubTitlePadding;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = <Widget>[];
    if (title != null) {
      children.add(SubTitle(
        size: size ?? 14.0.w,
        text: title,
        padding: subTitlePadding,
      ));
    }

    if (card) {
      final ClipRRect box = ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(8.0.w)),
        child: Column(
          children: this.children,
        ),
      );
      children.add(box);
    } else {
      children.addAll(this.children);
    }

    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}

class SubTitle extends StatelessWidget {
  SubTitle({
    Key? key,
    this.text = '',
    this.size,
    EdgeInsets? padding,
  })  : padding = padding ?? defaultSubTitlePadding,
        super(key: key);

  final String? text;
  final double? size;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text ?? '',
        style: TextStyle(
          color: const Color.fromRGBO(69, 90, 100, 0.6),
          fontSize: size ?? 14.0.w,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

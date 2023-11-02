import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FNActiveResponse extends StatefulWidget {
  const FNActiveResponse({
    Key? key,
    this.disabled = false,
    this.enable = true,
    this.onClick,
    this.cursorBuilder,
    required this.builder,
    this.child,
  }) : super(key: key);

  final bool disabled;
  final bool enable;
  final VoidCallback? onClick;
  final SystemMouseCursor Function(SystemMouseCursor cursor)? cursorBuilder;
  final Widget Function(BuildContext contenxt, bool active, Widget? child)
      builder;
  final Widget? child;

  @override
  _FNActiveResponseState createState() => _FNActiveResponseState();
}

class _FNActiveResponseState extends State<FNActiveResponse> {
  bool _active = false;

  void setActive(bool active) {
    setState(() => _active = active);
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: widget.disabled,
      child: MouseRegion(
        cursor: widget.cursorBuilder?.call(_cursor) ?? _cursor,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: widget.enable ? widget.onClick : null,
          onTapDown:
              widget.enable ? (TapDownDetails e) => setActive(true) : null,
          onTapCancel: widget.enable ? () => setActive(false) : null,
          onTapUp: widget.enable ? (TapUpDetails e) => setActive(false) : null,
          child: RepaintBoundary(
            child: widget.builder(context, _active, widget.child),
          ),
        ),
      ),
    );
  }

  SystemMouseCursor get _cursor =>
      widget.disabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click;
}

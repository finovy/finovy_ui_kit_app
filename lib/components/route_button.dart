import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'active_response.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    Key? key,
    this.text = '',
    required this.onPressed,
  }) : super(key: key);

  final String text;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final Widget result = Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
      height: 40.0.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(text),
          const Spacer(),
          RotatedBox(
            quarterTurns: 2,
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 16.0.w,
            ),
          )
        ],
      ),
    );

    return Semantics(
      container: true,
      button: true,
      enabled: true,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 14.0.w,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF323233),
        ),
        child: FNActiveResponse(
          builder: (BuildContext contenxt, bool active, Widget? child) {
            return DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0.w)),
                color:
                    active ? const Color(0xFFEEF0F4) : const Color(0xfff7f8fa),
              ),
              child: child,
            );
          },
          onClick: onPressed,
          child: result,
        ),
      ),
    );
  }
}

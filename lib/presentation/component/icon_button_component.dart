import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconButtonComponent extends StatelessWidget {
  final Function()? onPressed;
  final Widget icon;
  const IconButtonComponent({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 20.r,
      onPressed: onPressed,
      icon: icon,
    );
  }
}

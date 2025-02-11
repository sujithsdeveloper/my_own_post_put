import 'package:flutter/material.dart';
import 'package:my_own_post_put/utils/constants/color_constants.dart';

class GradientCircleAvathar extends StatelessWidget {
  const GradientCircleAvathar({
    super.key,
    this.radius = 60,
    this.child,
  });
  final double radius;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: ColorConstants.primaryGradientHorizontal),
        child: child);
  }
}

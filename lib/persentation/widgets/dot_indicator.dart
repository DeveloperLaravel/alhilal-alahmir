import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
    this.activeColor = const Color(0xFFFF1818),
    this.inActiveColor = const Color(0xFF868686),
  });

  final bool isActive;
  final Color activeColor, inActiveColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(horizontal: 16 / 2),
      height: 8,
      width: 10,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: isActive ? activeColor : inActiveColor.withOpacity(0.25),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}

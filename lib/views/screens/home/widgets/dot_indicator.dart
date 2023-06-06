import 'package:flutter/material.dart';
import 'package:marketplace_app/utils/utils.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    required this.current, required this.length, super.key,
  });

  final int current;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => Dot(
          currentPage: current,
          index: index,
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({
    required this.currentPage,
    required this.index,
    super.key,
  });

  final int currentPage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.decelerate,
      margin: const EdgeInsets.only(right: 4),
      height: 4,
      width: currentPage == index ? 11 : 4,
      decoration: BoxDecoration(
        color: currentPage == index ? kTextColor : const Color(0xffB2B7B4),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

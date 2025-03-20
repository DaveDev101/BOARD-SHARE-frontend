import 'package:boardshare/packages/core/sizes.dart';
import 'package:flutter/material.dart';

class DFooter extends StatelessWidget {
  const DFooter({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kFooterHeight, // Footer의 높이 지정
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: dark ? Colors.black87 : Colors.white,
        border: dark
            ? null
            : Border(top: BorderSide(color: Colors.grey[300]!, width: 2.0)),
      ),
      child: Text(
        'Footer',
        style: TextStyle(
            color: dark ? Colors.white : Colors.black87, fontSize: 20),
      ),
    );
  }
}

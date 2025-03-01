import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/sizes.dart';

class DButton extends StatelessWidget {
  const DButton({
    super.key,
    required this.title,
    required this.dark,
    this.transparent,
    this.func,
  });

  final String title;
  final bool dark;
  final bool? transparent;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: func,
      style: TextButton.styleFrom(
        backgroundColor: (transparent != null && transparent!)
            ? Colors.transparent
            : (dark ? Colors.black : Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Text(
        title,
        style: TextStyle(color: dark ? Colors.white : Colors.black),
      ),
    );
  }
}

class DIconButton extends StatelessWidget {
  const DIconButton({
    super.key,
    required this.icon,
    required this.title,
    required this.dark,
    this.func,
  });

  final IconData icon;
  final String title;
  final bool dark;
  final VoidCallback? func;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          color: dark ? Colors.white : Colors.black,
          onPressed: func,
          icon: Icon(icon),
        ),
        const SizedBox(width: kDSpace),
        Text(title,
            style: TextStyle(color: dark ? Colors.white : Colors.black)),
      ],
    );
  }
}

class DDropDownItem extends HookConsumerWidget {
  const DDropDownItem({
    super.key,
    required this.itemIndex,
    required this.icon,
    required this.text,
    required this.func,
  });

  final int itemIndex;
  final IconData icon;
  final String text;
  final Function func;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isHovered = useState(false);

    return MouseRegion(
      onEnter: (_) => isHovered.value = true,
      onExit: (_) => isHovered.value = false,
      child: InkWell(
        onTap: () {
          debugPrint('$text 선택됨');
          func(itemIndex);
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(kPadding),
          color: isHovered.value ? Colors.grey : Colors.transparent,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              SizedBox(width: kDSpace),
              Text(
                text,
                style: TextStyle(
                  decoration: isHovered.value
                      ? TextDecoration.underline
                      : TextDecoration.none,
                  decorationThickness: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../packages/core/sizes.dart';

class UserContentTitle extends StatelessWidget {
  const UserContentTitle({
    super.key,
    required this.title,
    required this.notes,
    required this.horizontalPadding,
  });

  final String title;
  final String notes;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128.0,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kESpace * 2),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge!,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: kSpace),
          Text(
            notes,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: kESpace),
        ],
      ),
    );
  }
}

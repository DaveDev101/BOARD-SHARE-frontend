import 'package:flutter/material.dart';

class LoadingImage extends StatelessWidget {
  const LoadingImage({
    super.key,
    required this.url,
    this.width,
    this.height,
  });

  final String url;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      errorBuilder: (c, err, stack) {
        return const Center(child: Text('error'));
      },
      frameBuilder: (c, image, frame, sync) {
        if (!sync && frame == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return image;
      },
    );
  }
}

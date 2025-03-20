import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const _maxRetry = 3;

class LoadingImage extends HookWidget {
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
    final retryCount = useState(0);
    final imageKey = useState(UniqueKey());

    return Image.network(
      key: imageKey.value,
      url,
      fit: BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
      frameBuilder: (c, image, frame, sync) {
        if (!sync && frame == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return image;
      },
      errorBuilder: (c, err, stack) {
        // if (err.toString().contains('429') && retryCount.value < _maxRetry) {
        if (retryCount.value < _maxRetry) {
          Future.delayed(const Duration(seconds: 2), () {
            retryCount.value = retryCount.value + 1;
            imageKey.value = UniqueKey();
          });
          return const Center(child: CircularProgressIndicator());
        }
        return const Center(child: Text('오류 발생!'));
      },
    );
  }
}

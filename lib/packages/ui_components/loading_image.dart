import 'dart:math';

import 'package:boardshare/app_env.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

const _maxRetry = 3;

class LoadingImage extends HookWidget {
  const LoadingImage({super.key, required this.url, this.width, this.height});

  final String url;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final retryCount = useState(0);
    final imageKey = useState(UniqueKey());

    if (kAppEnv == EnumAppEnv.mockup) {
      return Image.asset(
        _getSymbolImageUrl(),
        fit: BoxFit.cover,
        width: width ?? double.infinity,
        height: height ?? double.infinity,
      );
    }

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

// generate random mock image urls
final _random = Random();
List<String> _mockImageUrls = [
  'assets/imgs/symbols/202408-B-B-32-1.png',
  'assets/imgs/symbols/202408-B-B-36-1.png',
  'assets/imgs/symbols/202408-B-B-40-1.png',
  'assets/imgs/symbols/202408-B-B-45-1.png',
  'assets/imgs/symbols/0621006_applemangoade-e1561130116494.png',
  'assets/imgs/symbols/0621010_chocolate_icecream-e1561130072228.png',
  'assets/imgs/symbols/19071802_book_rental.png',
  'assets/imgs/symbols/19071804_red_chilli_pepper_paste.png',
  'assets/imgs/symbols/20190820-A-A-01-1.png',
  'assets/imgs/symbols/20190820-A-A-02-1.png',
  'assets/imgs/symbols/20190820-A-A-03-1.png',
  'assets/imgs/symbols/20190820-A-A-04-1.png',
  'assets/imgs/symbols/20190820-A-A-05-1.png',
  'assets/imgs/symbols/20190820-A-A-06-1.png',
  'assets/imgs/symbols/20190820-A-A-07-1.png',
  'assets/imgs/symbols/20190820-A-A-08-1.png',
];

String _getSymbolImageUrl() {
  _mockImageUrls.shuffle(_random);
  return _mockImageUrls[_random.nextInt(_mockImageUrls.length)];
}

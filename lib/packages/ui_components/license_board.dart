import 'package:flutter/material.dart';

import '../core/colors.dart';
import '../core/purchase.dart';
import '../core/sizes.dart';

class LicenseBoard extends StatelessWidget {
  const LicenseBoard({
    super.key,
    required this.selectedOption,
    required this.checkedIcon,
    required this.uncheckedIcon,
  });

  final ValueNotifier<DownloadOption> selectedOption;
  final Icon checkedIcon;
  final Icon uncheckedIcon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        padding: EdgeInsets.all(12),
        width: 480.0,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          // color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PNG 파일 포맷",
              style: TextStyle(
                color: Colors.white,
                // color: Colors.black87,
                fontWeight: FontWeight.w200,
              ),
            ),
            Divider(color: Colors.white24),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (selectedOption.value == DownloadOption.subscription) {
                      selectedOption.value = DownloadOption.none;
                    } else {
                      selectedOption.value = DownloadOption.subscription;
                    }
                  },
                  icon: selectedOption.value == DownloadOption.subscription
                      ? checkedIcon
                      : uncheckedIcon,
                ),
                SizedBox(width: kSpace),
                Text(
                  "구독 (Non-Commercial Use Only)",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  "매월 1,100 ~ 4,400원",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4.0),
                Tooltip(
                  message:
                      '구독 회원은 모든 상징과 의사소통판을 다운로드\n받아 사용할 수 있습니다.\n\n단, 상업적 용도로는 사용할 수\n없습니다.!',
                  child: Icon(
                    Icons.help,
                    color: kBgColor,
                    // color: Colors.black87,
                    size: 20.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: kSpace),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    if (selectedOption.value == DownloadOption.singlePurchase) {
                      selectedOption.value = DownloadOption.none;
                    } else {
                      selectedOption.value = DownloadOption.singlePurchase;
                    }
                  },
                  icon: selectedOption.value == DownloadOption.singlePurchase
                      ? checkedIcon
                      : uncheckedIcon,
                ),
                SizedBox(width: 8),
                Text(
                  "단일 의사소통판 구매\n(SingleRoyalty-free, commercial licenses)",
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  "1,000원",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 4.0),
                Tooltip(
                  message:
                      '본 의사소통판을 다운로드 받아\n상업적 용도로 사용이 가능합니다.\n\n다른 상징이나 의사소통판은 다운로드 받을 수 없습니다!',
                  child: Icon(
                    Icons.help,
                    color: kBgColor,
                    // color: Colors.black87,
                    size: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

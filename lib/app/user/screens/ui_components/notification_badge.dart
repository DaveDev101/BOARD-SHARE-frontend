import 'package:badges/badges.dart' as badges;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../packages/core/sizes.dart';

class NotificationDropDownItem {
  const NotificationDropDownItem(
    this.notificationId,
    this.publisher,
    this.publishedAt,
    this.title,
    this.content,
  );

  final int notificationId;
  final String publisher;
  final DateTime publishedAt;
  final String title;
  final String content;
}

final _notificationDropDownItems = [
  NotificationDropDownItem(
    1001,
    '민트컴퍼니 주식회사',
    DateTime.parse('2025-07-01 11:01:02'),
    '홍길동 회원이 그룹 멤버에 추가되었습니다.',
    '관리자에 의해 홍길동 회원이 2023년 7월 1일 10시 51분에 그룹 멤버에 추가되었습니다. 홍길동 회원의 권한은 ADMIN입니다.',
  ),
  NotificationDropDownItem(
    1002,
    '사람과소통',
    DateTime.parse('2024-12-30 15:34:31'),
    '이닦기순서 의사소통 지원판이 추가되었습니다.',
    '관리자에 의해 홍길동 회원이 2023년 7월 1일 10시 51분에 그룹 멤버에 추가되었습니다. 홍길동 회원의 권한은 ADMIN입니다.',
  ),
  NotificationDropDownItem(
    1002,
    '민트컴퍼니 주식회사',
    DateTime.parse('2024-12-30 15:34:31'),
    '이닦기순서 의사소통 지원판이 추가되었습니다.',
    '관리자에 의해 홍길동 회원이 2023년 7월 1일 10시 51분에 그룹 멤버에 추가되었습니다. 홍길동 회원의 권한은 ADMIN입니다.',
  ),
  NotificationDropDownItem(
    1002,
    '김치료사',
    DateTime.parse('2024-12-30 15:34:31'),
    '이닦기순서 의사소통 지원판이 추가되었습니다.',
    '관리자에 의해 홍길동 회원이 2023년 7월 1일 10시 51분에 그룹 멤버에 추가되었습니다. 홍길동 회원의 권한은 ADMIN입니다.',
  ),
  NotificationDropDownItem(
    1002,
    '홍길동',
    DateTime.parse('2024-12-30 15:34:31'),
    '이닦기순서 의사소통 지원판이 추가되었습니다.',
    '관리자에 의해 홍길동 회원이 2023년 7월 1일 10시 51분에 그룹 멤버에 추가되었습니다. 홍길동 회원의 권한은 ADMIN입니다.',
  ),
];

class NotificationBadge extends HookConsumerWidget {
  const NotificationBadge({super.key, required this.darkBg});

  final bool darkBg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationCount = useState(5);

    return _buildNotificationDropdownMenu(
      context,
      () {},
      badges.Badge(
        // 배지 위치 조절
        position: badges.BadgePosition.topEnd(top: -5, end: -5),
        // 알림 개수가 0보다 클 때만 배지를 보여줍니다.
        showBadge: notificationCount.value > 0,
        // 배지에 표시될 내용
        badgeContent: Text(
          notificationCount.value.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 10),
        ),
        child: Icon(
          Icons.notifications_none_outlined,
          color: darkBg ? Colors.white : Colors.black54,
          size: 28.0,
        ),
        // child: IconButton(
        //   onPressed: () {
        //     if (kDebugMode) {
        //       print('Notifications button tapped!');
        //     }
        //     // notificationCount.value = 0;
        //   },
        //   icon: Icon(
        //     Icons.notifications_none_outlined,
        //     color: darkBg ? Colors.white : Colors.black54,
        //     size: 20.0,
        //   ),
        //   // label: Text(
        //   //   'Notifications',
        //   //   style: TextStyle(color: darkBg ? Colors.white : Colors.black54),
        //   // ),
        //   style: IconButton.styleFrom(
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(20.0),
        //     ),
        //     side: BorderSide(
        //       color: darkBg ? Colors.white : Colors.grey.shade300,
        //     ),
        //     backgroundColor: darkBg ? Colors.black54 : Colors.white,
        //   ),
        // ),
      ),
    );
  }

  // Drop Down Menu
  Widget _buildNotificationDropdownMenu(
    BuildContext context,
    Function func,
    Widget child,
  ) {
    return PopupMenuButton(
      tooltip: '공지사항',
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1.0,
      position: PopupMenuPosition.under,
      child: child,
      itemBuilder: (context) {
        return List.generate(
          _notificationDropDownItems.length,
          (index) => PopupMenuItem(
            value: _notificationDropDownItems[index].notificationId,
            onTap: () {
              // func(index);
            },
            child: NotificationCard(item: _notificationDropDownItems[index]),
            // child: Container(
            //   width: double.infinity,
            //   padding: const EdgeInsets.all(kPadding),
            //   color: Colors.transparent,
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(_notificationDropDownItems[index].icon),
            //       SizedBox(width: kSpace),
            //       Text(_notificationDropDownItems[index].title),
            //     ],
            //   ),
            // ),
          ),
          // : PopupMenuDivider(),
        );
      },
    );
  }
}

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.item});

  final NotificationDropDownItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      dense: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade300, width: 1.0),
            ),
            child: Text(
              item.publisher,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Spacer(),
          Text(
            DateFormat('MMM d').format(item.publishedAt),
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
      subtitle: Column(
        children: [
          const SizedBox(height: kDSpace),
          Text(
            item.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 16, color: Colors.black87),
          ),
          Text(
            item.content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: kSpace),
        ],
      ),
    );
  }
}

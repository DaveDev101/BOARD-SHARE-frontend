import 'package:boardshare/app/user/screens/ui_components/user_content_title.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/footer.dart';
import 'package:flutter/material.dart';

final List<Map<String, String>> _items = const [
  {
    'date': '2024-05-31 09:21:01',
    'icon': '202408-B-B-32-1.png',
    'title': '음악활동',
    'type': 'symbol',
  },
  {
    'date': '2024-05-31 09:21:01',
    'icon': '0621006_applemangoade-e1561130116494.png',
    'title': '애플망고티',
    'type': 'symbol',
  },
  {
    'date': '2024-05-31 09:21:01',
    'icon': '20190820-A-A-06-1.png',
    'title': '분홍색 공',
    'type': 'symbol',
  },
  {
    'date': '2024-05-31 09:21:01',
    'icon': '19071804_red_chilli_pepper_paste.png',
    'title': '초장',
    'type': 'symbol',
  },
  {
    'date': '2024-05-31 09:21:01',
    'icon': '20190820-A-A-02-1.png',
    'title': '보라색 공',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '20190820-A-A-01-1.png',
    'title': '빨간색 공',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '20190820-A-A-08-1.png',
    'title': '브라운',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
  {
    'date': '2023-11-20 14:08:07',
    'icon': '19071802_book_rental.png',
    'title': 'AAAAA----AAAA',
    'type': 'symbol',
  },
];

Image _getImg(String iconName) {
  switch (iconName) {
    default:
      return Image.asset('assets/imgs/symbols/$iconName');
  }
}

class DownloadHistoryPage extends StatelessWidget {
  const DownloadHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sWidth = MediaQuery.of(context).size.width;
    // final sHeight = MediaQuery.of(context).size.height;
    final horizontalPadding = (sWidth > kMaxWidth)
        ? (sWidth - (kMaxWidth / 2)) / 2
        : kESpace * 4;

    return Container(
      // height: 1200,
      color: Colors.grey[200],
      // padding: EdgeInsets.symmetric(horizontal: horizontalPadding * 4),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserContentTitle(
              title: '다운로드 목록',
              notes: '내가 다운받은 상징 목록이 표시됩니다.',
              horizontalPadding: horizontalPadding,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            sliver: SliverList.builder(
              itemCount: _items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _items[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // 선 색상
                        width: 1.0, // 선 두께
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.download, color: Colors.black54),
                      const SizedBox(width: kSpace),
                      Text(
                        item['date'] ?? '--',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Spacer(),
                      SizedBox(
                        width: 52.0,
                        height: 52.0,
                        child: _getImg(item['icon']!),
                      ),
                      const SizedBox(width: kESpace),
                      Expanded(
                        child: Text(
                          item['title']!,
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      // const SizedBox(width: kESpace),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert_outlined),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: kESpace * 4)),
          // Footer
          SliverToBoxAdapter(child: DFooter(dark: false)),
        ],
      ),
    );
  }
}

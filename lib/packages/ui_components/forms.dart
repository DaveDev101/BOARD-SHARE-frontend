import 'package:boardshare/packages/core/colors.dart';
import 'package:boardshare/packages/core/portal_controller.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/sizes.dart';

class _HomeDropDownItems {
  const _HomeDropDownItems({required this.icon, required this.title});

  final IconData icon;
  final String title;
}

final _homeDropDownItems = [
  _HomeDropDownItems(icon: Icons.crop_square, title: '상징'),
  _HomeDropDownItems(icon: Icons.dashboard, title: '의사소통판'),
  _HomeDropDownItems(icon: Icons.book_online, title: '한스피크 자료'),
];

class DHomeSearchField extends HookConsumerWidget {
  const DHomeSearchField({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portalCtl = ref.watch(portalControllerProvider);
    // final isMenuDropped = useState<bool>(false);
    final selectedItem = useState<_HomeDropDownItems>(_homeDropDownItems[0]);
    final controller = useTextEditingController();

    Future<void> handleSubmit() async {
      final query = controller.text.trim();
      debugPrint('search term: $query');

      // var r1 = await ref
      //     .read(dioProvider)
      //     .fetchData('/user/home', fromJson: MockHome.fromJson);
      //
      // if (kDebugMode) {
      //   print('');
      //   print('');
      //   print(r1);
      //   print('');
      //   print('OKAY');
      //   print('');
      // }

      // var r2 = await ref.read(postServicesProvider).searchSymbols(
      //     searchTerm: controller.text, taxonomyTerms: ['term001', 'term002']);

      if (kDebugMode) {
        // print(r2.data);
        // print(r2.data.runtimeType);
        print('');
        print('OKAY');
        print('');
      }
    }

    return Container(
      constraints: BoxConstraints(maxWidth: kMaxWidth - 400),
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: kMargin),
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.0),
        border: Border.all(
          color: kBColor,
          width: 1.0,
        ),
        // boxShadow: [
        //   BoxShadow(
        //       color: Colors.black26,
        //       blurRadius: 1.0,
        //       offset: const Offset(0, 2))
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left DropDown Menu: 상징, 의사소통판
          SizedBox(
            width: 160.0,
            height: double.infinity,
            child: Center(
              child: PortalTarget(
                // visible: isMenuDropped.value,
                visible: portalCtl.$1,
                anchor: Aligned(
                  follower: Alignment.topLeft,
                  target: Alignment.bottomLeft,
                ),
                portalFollower: _buildDropdownMenu((index) {
                  // isMenuDropped.value = false;
                  ref
                      .read(portalControllerProvider.notifier)
                      .makeAllInvisible();
                  selectedItem.value = _homeDropDownItems[index];
                }),
                child: InkWell(
                  onTap: () {
                    // isMenuDropped.value = !isMenuDropped.value;
                    ref
                        .read(portalControllerProvider.notifier)
                        .toggleVisibility(1);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(selectedItem.value.icon),
                      const SizedBox(width: kDSpace),
                      Text(
                        selectedItem.value.title,
                        style: TextStyle(fontSize: 14.0),
                      ),
                      Spacer(),
                      const Icon(Icons.expand_more),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: kSpace),
          VerticalDivider(color: kBColor),
          const SizedBox(width: kESpace),
          // Text Field
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: '6,000여 개 AAC 컨텐츠 검색...',
                border: InputBorder.none,
              ),
              onEditingComplete: handleSubmit,
            ),
          ),
          VerticalDivider(color: kBColor),
          // 오른쪽 돋보기 아이콘
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: handleSubmit,
          ),
        ],
      ),
    );
  }

  // Drop Down Menu
  Widget _buildDropdownMenu(Function func) {
    return Material(
      elevation: 4.0,
      child: Container(
        color: Colors.white,
        width: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            _homeDropDownItems.length,
            (index) => DDropDownItem(
              itemIndex: index,
              icon: _homeDropDownItems[index].icon,
              text: _homeDropDownItems[index].title,
              func: (index) => func(index),
            ),
          ),
        ),
      ),
    );
  }
}

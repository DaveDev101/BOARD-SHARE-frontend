import 'package:boardshare/packages/core/colors.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/sizes.dart';

class _HomeDropDownItems {
  const _HomeDropDownItems({
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;
}

final _homeDropDownItems = [
  _HomeDropDownItems(icon: Icons.crop_square, title: '상징', value: 'symbol'),
  _HomeDropDownItems(icon: Icons.dashboard, title: '의사소통판', value: 'board'),
  _HomeDropDownItems(icon: Icons.book_online, title: '한스피크 자료', value: 'book'),
];

class DHomeSearchField extends HookConsumerWidget {
  const DHomeSearchField({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final portalCtl = ref.watch(portalControllerProvider);
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

    final sWidth = MediaQuery.of(context).size.width;
    if (sWidth < kMaxTabletWidth) {
      return _buildMobileSearchField(
        context: context,
        ref: ref,
        height: height,
        selectedItem: selectedItem,
        controller: controller,
        // portalCtl: portalCtl,
        handleSubmit: handleSubmit,
      );
    } else {
      return _buildDesktopSearchField(
        context: context,
        ref: ref,
        height: height,
        selectedItem: selectedItem,
        controller: controller,
        // portalCtl: portalCtl,
        handleSubmit: handleSubmit,
      );
    }
  }
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

List<PopupMenuItem<String>> _buildSearchDropdownMenu(Function func) {
  return List.generate(
    _homeDropDownItems.length,
    (index) => PopupMenuItem(
      value: _homeDropDownItems[index].value,
      onTap: () {
        func(index);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(kPadding),
        color: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(_homeDropDownItems[index].icon),
            SizedBox(width: kSpace),
            Text(
              _homeDropDownItems[index].title,
              // style: TextStyle(
              //   decoration: isHovered.value
              //       ? TextDecoration.underline
              //       : TextDecoration.none,
              //   decorationThickness: 1.0,
              // ),
            ),
          ],
        ),
      ),
      // child: DDropDownItem(
      //   itemIndex: index,
      //   icon: _homeDropDownItems[index].icon,
      //   text: _homeDropDownItems[index].title,
      //   func: (index) {},
      //   // func: (index) => func(index),
      // ),
    ),
  );
}

Widget _buildMobileSearchField({
  required BuildContext context,
  required WidgetRef ref,
  required double height,
  required ValueNotifier selectedItem,
  required TextEditingController controller,
  // required (bool, bool, bool, bool, bool, bool) portalCtl,
  required VoidCallback handleSubmit,
}) {
  return Container(
    constraints: BoxConstraints(maxWidth: kMaxWidth - kESpace),
    height: height,
    margin: const EdgeInsets.symmetric(horizontal: kMargin),
    padding: const EdgeInsets.symmetric(horizontal: kPadding),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(2.0),
      border: Border.all(color: kBColor, width: 1.0),
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
          width: 60.0,
          height: double.infinity,
          child: Center(
            child: PopupMenuButton<String>(
              tooltip: '컨텐츠 종류',
              color: Colors.white,
              surfaceTintColor: Colors.white,
              elevation: 1.0,
              position: PopupMenuPosition.over,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(selectedItem.value.icon),
                  Spacer(),
                  const Icon(Icons.expand_more),
                ],
              ),
              itemBuilder: (context) => _buildSearchDropdownMenu(
                (index) => selectedItem.value = _homeDropDownItems[index],
              ),
              // itemBuilder: (context) => [
              //   PopupMenuItem(
              //     value: 'home',
              //     onTap: () => context.go('/'),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Icon(Icons.home_filled),
              //         SizedBox(width: kSpace),
              //         Text('홈'),
              //       ],
              //     ),
              //   ),
              //   PopupMenuItem(
              //     value: 'symbols',
              //     onTap: () => context.go('/content/symbols'),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Icon(Icons.crop_square),
              //         SizedBox(width: kSpace),
              //         Text('상징'),
              //       ],
              //     ),
              //   ),
              //   PopupMenuItem(
              //     value: 'boards',
              //     onTap: () => context.go('/content/boards'),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Icon(Icons.dashboard),
              //         SizedBox(width: kSpace),
              //         Text('의사소통판'),
              //       ],
              //     ),
              //   ),
              //   PopupMenuItem(
              //     value: 'hanspeakBook',
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Icon(Icons.book_online),
              //         SizedBox(width: kSpace),
              //         Text('한스피크자료'),
              //       ],
              //     ),
              //   ),
              //   PopupMenuItem(
              //     value: 'subscription',
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Icon(Icons.credit_card),
              //         SizedBox(width: kSpace),
              //         Text('구독'),
              //       ],
              //     ),
              //   ),
              //   PopupMenuItem(
              //     value: 'more',
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Icon(Icons.more_vert),
              //         SizedBox(width: kSpace),
              //         Text('More...'),
              //       ],
              //     ),
              //   ),
              // ],
            ),
            // child: PortalTarget(
            //   // visible: isMenuDropped.value,
            //   visible: portalCtl.$1,
            //   anchor: Aligned(
            //     follower: Alignment.topLeft,
            //     target: Alignment.bottomLeft,
            //   ),
            //   portalFollower: _buildDropdownMenu((index) {
            //     // isMenuDropped.value = false;
            //     ref.read(portalControllerProvider.notifier).makeAllInvisible();
            //     selectedItem.value = _homeDropDownItems[index];
            //   }),
            //   child: InkWell(
            //     onTap: () {
            //       // isMenuDropped.value = !isMenuDropped.value;
            //       ref
            //           .read(portalControllerProvider.notifier)
            //           .toggleVisibility(1);
            //     },
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Icon(selectedItem.value.icon),
            //         Spacer(),
            //         const Icon(Icons.expand_more),
            //       ],
            //     ),
            //   ),
            // ),
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
        IconButton(icon: const Icon(Icons.search), onPressed: handleSubmit),
      ],
    ),
  );
}

Widget _buildDesktopSearchField({
  required BuildContext context,
  required WidgetRef ref,
  required double height,
  required ValueNotifier selectedItem,
  required TextEditingController controller,
  // required (bool, bool, bool, bool, bool, bool) portalCtl,
  required VoidCallback handleSubmit,
}) {
  return Container(
    constraints: BoxConstraints(maxWidth: kMaxWidth - 400),
    height: height,
    margin: const EdgeInsets.symmetric(horizontal: kMargin),
    padding: const EdgeInsets.symmetric(horizontal: kPadding),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(2.0),
      border: Border.all(color: kBColor, width: 1.0),
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
            child: PopupMenuButton<String>(
              tooltip: '컨텐츠 종류',
              color: Colors.white,
              surfaceTintColor: Colors.white,
              elevation: 1.0,
              position: PopupMenuPosition.over,
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
              itemBuilder: (context) => _buildSearchDropdownMenu(
                (index) => selectedItem.value = _homeDropDownItems[index],
              ),
            ),
            // child: PortalTarget(
            //   // visible: isMenuDropped.value,
            //   visible: portalCtl.$1,
            //   anchor: Aligned(
            //     follower: Alignment.topLeft,
            //     target: Alignment.bottomLeft,
            //   ),
            //   portalFollower: _buildDropdownMenu((index) {
            //     // isMenuDropped.value = false;
            //     ref.read(portalControllerProvider.notifier).makeAllInvisible();
            //     selectedItem.value = _homeDropDownItems[index];
            //   }),
            //   child: InkWell(
            //     onTap: () {
            //       // isMenuDropped.value = !isMenuDropped.value;
            //       ref
            //           .read(portalControllerProvider.notifier)
            //           .toggleVisibility(1);
            //     },
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Icon(selectedItem.value.icon),
            //         const SizedBox(width: kDSpace),
            //         Text(
            //           selectedItem.value.title,
            //           style: TextStyle(fontSize: 14.0),
            //         ),
            //         Spacer(),
            //         const Icon(Icons.expand_more),
            //       ],
            //     ),
            //   ),
            // ),
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
        IconButton(icon: const Icon(Icons.search), onPressed: handleSubmit),
      ],
    ),
  );
}

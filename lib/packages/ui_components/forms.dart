import 'dart:convert';

import 'package:boardshare/packages/core/colors.dart';
import 'package:boardshare/packages/core/portal_controller.dart';
import 'package:boardshare/packages/network/dio_api_client.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../core/sizes.dart';
import '../data_models/mock_home.dart';

class _HomeDropDownItems {
  const _HomeDropDownItems({required this.icon, required this.title});

  final IconData icon;
  final String title;
}

final _homeDropDownItems = [
  _HomeDropDownItems(icon: Icons.crop_square, title: '상징'),
  _HomeDropDownItems(icon: Icons.dashboard, title: '의사소통판'),
];

class DHomeSearchField extends HookConsumerWidget {
  const DHomeSearchField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portalCtl = ref.watch(portalControllerProvider);
    // final isMenuDropped = useState<bool>(false);
    final selectedItem = useState<_HomeDropDownItems>(_homeDropDownItems[0]);
    final controller = useTextEditingController();

    return Container(
      constraints: BoxConstraints(maxWidth: kMaxWidth - 300),
      height: kFEHeight,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            ),
          ),
          VerticalDivider(color: kBColor),
          // 오른쪽 돋보기 아이콘
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () async {
              final query = controller.text.trim();
              debugPrint('search term: $query');

              var r1 = await ref
                  .read(dioProvider)
                  .fetchData('/user/home', fromJson: MockHome.fromJson);

              print(r1.id);
              if (r1.id == null) print('NULL');

              var mockHome = MockHome(
                  status: 'status0', message: 'message1', version: 'version2');

              MockHome r;

              print(mockHome.toJson());
              print(mockHome.toJson().runtimeType);
              print(jsonEncode(mockHome.toJson()));
              print(jsonEncode(mockHome.toJson()).runtimeType);
              //
              // try {
              //   r = await fetchData(
              //     'http://localhost:8080/api/v1/user/home',
              //     fromJson: MockHome.fromJson,
              //     requestData: mockHome,
              //   );
              //
              //   debugPrint(r.toString());
              //   debugPrint(r.message);
              // } on ApiException catch (e) {
              //   print(e.statusCode);
              // } catch (e) {
              //   print(e);
              // }
            },
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

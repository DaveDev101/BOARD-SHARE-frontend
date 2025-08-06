import 'dart:math';

import 'package:boardshare/app/user/controllers/my_board_at_index_ctl.dart';
import 'package:boardshare/app_env.dart';
import 'package:boardshare/packages/core/colors.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final myBoardAtIndexCondition = Provider<(int, String)>(
  (ref) => throw UnimplementedError(),
);

enum _It { makePublic, makePrivate, edit, delete, divider }

class _UserDropDownItems {
  const _UserDropDownItems(_It it, IconData ic, String ti)
    : item = it,
      icon = ic,
      title = ti;

  final _It item;
  final IconData icon;
  final String title;
}

final _userDropDownItems = [
  _UserDropDownItems(_It.makePublic, Icons.lock_open_outlined, '전체 공개'),
  _UserDropDownItems(_It.makePrivate, Icons.lock_outlined, '전체 공개 취소'),
  _UserDropDownItems(_It.divider, Icons.horizontal_rule_outlined, ''),
  _UserDropDownItems(_It.edit, Icons.edit_outlined, '수정'),
  _UserDropDownItems(_It.delete, Icons.delete_outlined, '삭제'),
];

class MyBoardCard extends HookConsumerWidget {
  const MyBoardCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (index, search) = ref.watch(myBoardAtIndexCondition);
    // final page = (index ~/ kQueryLimit) + 1;

    final boardAtIndex = ref.watch(
      myBoardAtIndexProvider(index, searchTerm: search),
    );

    final isHovered = useState(false);
    // final portalCtl = ref.watch(portalControllerProvider);
    final isMenuDropped = useState(false);

    return boardAtIndex.when(
      data: (data) {
        final b = data.value;
        if (b == null) {
          return Container();
        } else {
          return InkWell(
            onTap: () {
              if (kDebugMode) {
                print('BOARD [${b.boardTitle}] is tapped!');
              }
              // context.go('/content/boards/${b.boardId ?? 0}');
            },
            onHover: (hovering) => isHovered.value = hovering,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: isHovered.value
                    ? Border.all(color: Colors.black87, width: 1.0)
                    : null,
              ),
              padding: const EdgeInsets.fromLTRB(
                kPadding,
                kPadding,
                kPadding,
                0.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        b.boardTitle ?? '',
                        style: TextTheme.of(context).titleLarge,
                        // style: const TextStyle(
                        //   fontSize: 20,
                        //   fontWeight: FontWeight.bold,
                        // ),
                      ),
                      PortalTarget(
                        visible: isMenuDropped.value,
                        // visible: showMenu.value,
                        anchor: Aligned(
                          follower: Alignment.topRight,
                          target: Alignment.bottomRight,
                          offset: Offset(0, kDSpace),
                        ),
                        portalFollower: _buildDropdownMenu((index) async {
                          isMenuDropped.value = false;
                          // ref
                          //     .read(portalControllerProvider.notifier)
                          //     .makeAllInvisible();
                          // selectedItem.value = _userDropDownItems[index];
                          // if (index == 0) {
                          //   context.go("/change-password");
                          // }
                          switch (_userDropDownItems[index].item) {
                            default:
                              break;
                          }
                          // if (index == 1) {
                          //   await ref.read(signinControllerProvider.notifier).signOut();
                          // }
                          // if (index == 2) {
                          //   context.go("/group-mgt");
                          // }
                          // if (index == 3) {
                          //   context.go("/group-members");
                          // }
                        }),
                        child: IconButton(
                          onPressed: () {
                            final previousValue = isMenuDropped.value;
                            isMenuDropped.value = !previousValue;
                            // ref
                            //     .read(portalControllerProvider.notifier)
                            //     .toggleVisibility(6);
                          },
                          icon: Icon(Icons.more_horiz_outlined),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kSpace),
                  // Text(
                  //   '만든 사람: ${b.author} | ${b.authorOrg}',
                  //   style: TextStyle(color: Colors.grey[700]),
                  // ),
                  // if (b.updatedAt != null) const SizedBox(height: 4),
                  if (b.updatedAt != null)
                    Text(
                      DateFormat('yyyy-MM-dd HH:mm').format(b.updatedAt!),
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  const SizedBox(height: kESpace),
                  // _buidBoardPreview(boards.value[index].media ?? []),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        height: constraints.maxWidth - 72.0,
                        child: ClipRect(
                          child: SingleChildScrollView(
                            physics: NeverScrollableScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // constraints: BoxConstraints(
                                  //   maxWidth: constraints.maxWidth - kPadding * 2,
                                  //   maxHeight:
                                  //   constraints.maxHeight - kPadding * 3 - 60,
                                  // ),
                                  color: hexToColor(b.bgColor ?? '#ffffff'),
                                  padding: const EdgeInsets.all(kPadding),
                                  child: GridView.count(
                                    crossAxisCount: int.parse(
                                      b.gridSize?.split('by').first.trim() ??
                                          '0',
                                    ),
                                    shrinkWrap: true,
                                    crossAxisSpacing: 2.0,
                                    mainAxisSpacing: 2.0,
                                    physics: NeverScrollableScrollPhysics(),
                                    children: List.generate(
                                      min(b.media?.length ?? 0, 12),
                                      (index) => Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(),
                                          color: hexToColor(
                                            b.mBgColor ?? '#FFFFFF',
                                          ),
                                        ),
                                        child: LayoutBuilder(
                                          builder: (context, con) {
                                            // print(
                                            //     '${constraints.maxWidth} : ${con.maxWidth}');
                                            return Stack(
                                              children: [
                                                kAppEnv == EnumAppEnv.mockup
                                                    ? Image.asset(
                                                        b
                                                            .media![index]
                                                            .mediumUrl!,
                                                        width: con.maxWidth,
                                                        height: con.maxHeight,
                                                      )
                                                    : Image.network(
                                                        b
                                                            .media![index]
                                                            .mediumUrl!,
                                                        width: con.maxWidth,
                                                        height: con.maxHeight,
                                                      ),
                                                Positioned(
                                                  top: 2.0,
                                                  width: con.maxWidth,
                                                  child: Text(
                                                    b
                                                            .media![index]
                                                            .customTitle ??
                                                        '',
                                                    style: TextStyle(
                                                      fontSize:
                                                          b.mFontSize ?? 12.0,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(color: Colors.white),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        }
      },
      error: (err, stack) {
        if (kDebugMode) {
          print('AAC BOARD at Index err: $err');
        }
        return Text('ERR!');
      },
      loading: () {
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  // Drop Down Menu
  Widget _buildDropdownMenu(Function func) {
    return Material(
      elevation: 4.0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4.0),
        ),
        width: 180.0,
        padding: const EdgeInsets.symmetric(
          vertical: kESpace,
          horizontal: kSpace,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ...List.generate(
              _userDropDownItems.length,
              (index) => _userDropDownItems[index].item != _It.divider
                  ? DDropDownItem(
                      itemIndex: index,
                      icon: _userDropDownItems[index].icon,
                      text: _userDropDownItems[index].title,
                      func: (index) => func(index),
                    )
                  : Divider(),
            ),
          ],
        ),
      ),
    );
  }
}

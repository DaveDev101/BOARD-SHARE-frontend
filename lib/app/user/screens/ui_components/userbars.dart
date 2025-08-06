import 'package:boardshare/app/user/controllers/signin_controller.dart';
import 'package:boardshare/packages/core/sizes.dart';
import 'package:boardshare/packages/ui_components/buttons.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/user.dart';

enum _It {
  downloadHistory,
  myBoards,
  favoriteSymbols,
  favoriteBoards,
  favoriteBooks,
  accountSettings,
  groupSettings,
  signOut,
  divider,
}

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
  _UserDropDownItems(
    _It.downloadHistory,
    Icons.file_download_outlined,
    '다운로드 이력',
  ),
  _UserDropDownItems(_It.myBoards, Icons.dataset_outlined, '내 의사소통판'),
  _UserDropDownItems(_It.divider, Icons.horizontal_rule_outlined, ''),
  _UserDropDownItems(
    _It.favoriteSymbols,
    Icons.favorite_border_outlined,
    '즐겨찾기 - 상징',
  ),
  _UserDropDownItems(
    _It.favoriteBoards,
    Icons.favorite_border_outlined,
    '즐겨찾기 - 의사소통판',
  ),
  _UserDropDownItems(
    _It.favoriteBooks,
    Icons.favorite_border_outlined,
    '즐겨찾기 - 한스피크자료',
  ),
  _UserDropDownItems(_It.divider, Icons.horizontal_rule_outlined, ''),
  _UserDropDownItems(_It.accountSettings, Icons.account_circle, '사용자 정보'),
  _UserDropDownItems(_It.groupSettings, Icons.groups_outlined, '그룹 정보'),
  _UserDropDownItems(_It.signOut, Icons.logout, '로그아웃'),
];

class DUserBar extends HookConsumerWidget {
  const DUserBar({super.key, required this.darkBg});

  final bool darkBg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isMenuDropped = useState(false);
    // final portalCtl = ref.watch(portalControllerProvider);
    final selectedItem = useState<_UserDropDownItems>(_userDropDownItems[0]);
    final signinCtl = ref.watch(signinControllerProvider);

    // ref.listen(portalControllerProvider, (previous, isVisible) {
    //   if (kDebugMode) {
    //     print(
    //         '-------> ref.listen(portalControllerProvider: ($previous, $isVisible)');
    //   }
    //   isMenuDropped.value = isVisible;
    // });

    final unsignedWidget = Row(
      children: [
        DButton(
          title: '로그인',
          dark: darkBg ? true : false,
          transparent: darkBg ? false : true,
          func: () {
            context.go('/sign-in');
          },
        ),
        SizedBox(width: kDSpace),
        DButton(
          title: '가입',
          dark: darkBg ? false : true,
          func: () {
            context.go('/sign-up');
          },
        ),
      ],
    );

    return signinCtl.when(
      data: (data) {
        if (kDebugMode) {
          print('🚩➞ $data');
        }

        User? userInfo;
        if (data.$1.isEmpty) {
          userInfo = data.$2.user.user;
        }

        return _buildUserDropdownMenu(
          context,
          (index) async {
            selectedItem.value = _userDropDownItems[index];
            if (index == 0) {
              context.go("/change-password");
            }
            switch (_userDropDownItems[index].item) {
              case _It.downloadHistory:
                context.go('/user/download-history');
                break;
              case _It.myBoards:
                context.go('/user/my-boards');
                break;
              case _It.favoriteSymbols:
                context.go('/user/favorite-symbols');
                break;
              case _It.favoriteBoards:
                context.go('/user/favorite-boards');
                break;
              case _It.accountSettings:
                context.go('/user/user-profile');
                break;
              case _It.groupSettings:
                context.go('/user/group-mgt');
                break;
              case _It.signOut:
                await ref.read(signinControllerProvider.notifier).signOut();
                break;
              default:
                break;
            }
          },
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: darkBg ? Colors.white : Colors.black,
                radius: 20,
                child: Text(
                  userInfo?.displayName?.toUpperCase()[0] ?? '',
                  style: TextStyle(color: darkBg ? Colors.black : Colors.white),
                ),
              ),
            ],
          ),
        );

        // return PortalTarget(
        //   // visible: isMenuDropped.value,
        //   visible: portalCtl.$2,
        //   anchor: Aligned(
        //     follower: Alignment.topRight,
        //     target: Alignment.bottomRight,
        //     offset: Offset(0, kSpace * 2),
        //   ),
        //   portalFollower: _buildDropdownMenu((index) async {
        //     // isMenuDropped.value = false;
        //     ref.read(portalControllerProvider.notifier).makeAllInvisible();
        //     // selectedItem.value = _userDropDownItems[index];
        //     if (index == 0) {
        //       context.go("/change-password");
        //     }
        //     if (index == 1) {
        //       await ref.read(signinControllerProvider.notifier).signOut();
        //     }
        //     if (index == 2) {
        //       context.go("/group-mgt");
        //     }
        //     if (index == 3) {
        //       context.go("/group-members");
        //     }
        //   }),
        //   child: InkWell(
        //     onTap: () {
        //       // isMenuDropped.value = !isMenuDropped.value;
        //       ref.read(portalControllerProvider.notifier).toggleVisibility(2);
        //     },
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         CircleAvatar(
        //           backgroundColor: darkBg ? Colors.white : Colors.black,
        //           radius: 20,
        //           child: Text(
        //             // userInfo?.displayName?.toUpperCase()[0] ?? '',
        //             'U',
        //             style:
        //                 TextStyle(color: darkBg ? Colors.black : Colors.white),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // );

        // if (data.$1.isEmpty) {
        //   final userInfo = data.$2.user.user;
        //
        //   return PortalTarget(
        //     // visible: isMenuDropped.value,
        //     visible: portalCtl.$2,
        //     anchor: Aligned(
        //       follower: Alignment.topRight,
        //       target: Alignment.bottomRight,
        //       offset: Offset(0, kSpace * 2),
        //     ),
        //     portalFollower: _buildDropdownMenu((index) async {
        //       // isMenuDropped.value = false;
        //       ref.read(portalControllerProvider.notifier).makeAllInvisible();
        //       // selectedItem.value = _userDropDownItems[index];
        //       // if (index == 0) {
        //       //   context.go("/change-password");
        //       // }
        //       switch (_userDropDownItems[index].item) {
        //         case _It.downloadHistory:
        //           context.go('/user/download-history');
        //           break;
        //         case _It.myBoards:
        //           context.go('/user/my-boards');
        //           break;
        //         case _It.favoriteSymbols:
        //           context.go('/user/favorite-symbols');
        //           break;
        //         case _It.favoriteBoards:
        //           context.go('/user/favorite-boards');
        //           break;
        //         case _It.accountSettings:
        //           context.go('/user/user-profile');
        //           break;
        //         case _It.groupSettings:
        //           context.go('/user/group-mgt');
        //           break;
        //         case _It.signOut:
        //           await ref.read(signinControllerProvider.notifier).signOut();
        //           break;
        //         default:
        //           break;
        //       }
        //       // if (index == 1) {
        //       //   await ref.read(signinControllerProvider.notifier).signOut();
        //       // }
        //       // if (index == 2) {
        //       //   context.go("/group-mgt");
        //       // }
        //       // if (index == 3) {
        //       //   context.go("/group-members");
        //       // }
        //     }),
        //     child: InkWell(
        //       onTap: () {
        //         // isMenuDropped.value = !isMenuDropped.value;
        //         ref.read(portalControllerProvider.notifier).toggleVisibility(2);
        //       },
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           CircleAvatar(
        //             backgroundColor: darkBg ? Colors.white : Colors.black,
        //             radius: 20,
        //             child: Text(
        //               userInfo?.displayName?.toUpperCase()[0] ?? '',
        //               style: TextStyle(
        //                 color: darkBg ? Colors.black : Colors.white,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   );
        // } else {
        //   return PortalTarget(
        //     // visible: isMenuDropped.value,
        //     visible: portalCtl.$2,
        //     anchor: Aligned(
        //       follower: Alignment.topRight,
        //       target: Alignment.bottomRight,
        //       offset: Offset(0, kSpace * 2),
        //     ),
        //     portalFollower: _buildDropdownMenu((index) async {
        //       // isMenuDropped.value = false;
        //       ref.read(portalControllerProvider.notifier).makeAllInvisible();
        //       // selectedItem.value = _userDropDownItems[index];
        //       // if (index == 0) {
        //       //   context.go("/change-password");
        //       // }
        //       // switch (_userDropDownItems[index].item) {
        //       //   case _It.downloadHistory:
        //       //     context.go('/user/download-history');
        //       //     break;
        //       //   case _It.myBoards:
        //       //     context.go('/user/my-boards');
        //       //     break;
        //       //   case _It.favoriteSymbols:
        //       //     context.go('/user/favorite-symbols');
        //       //     break;
        //       //   case _It.favoriteBoards:
        //       //     context.go('/user/favorite-boards');
        //       //     break;
        //       //   case _It.accountSettings:
        //       //     context.go('/user-profile');
        //       //     break;
        //       //   case _It.signOut:
        //       //     await ref.read(signinControllerProvider.notifier).signOut();
        //       //     break;
        //       //   default:
        //       //     break;
        //       // }
        //       // if (index == 1) {
        //       //   await ref.read(signinControllerProvider.notifier).signOut();
        //       // }
        //       // if (index == 2) {
        //       //   context.go("/group-mgt");
        //       // }
        //       // if (index == 3) {
        //       //   context.go("/group-members");
        //       // }
        //     }),
        //     child: InkWell(
        //       onTap: () {
        //         // isMenuDropped.value = !isMenuDropped.value;
        //         ref.read(portalControllerProvider.notifier).toggleVisibility(2);
        //       },
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         children: [
        //           CircleAvatar(
        //             backgroundColor: darkBg ? Colors.white : Colors.black,
        //             radius: 20,
        //             child: Text(
        //               'T',
        //               style: TextStyle(
        //                 color: darkBg ? Colors.black : Colors.white,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),
        //   );
        //
        //   // return unsignedWidget;
        // }
      },
      error: (err, stack) {
        return Container();
      },
      loading: () => CircularProgressIndicator(
        color: darkBg ? Colors.white : Colors.black12,
      ),
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
        width: 260.0,
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

  // Drop Down Menu
  Widget _buildUserDropdownMenu(
    BuildContext context,
    Function func,
    Widget child,
  ) {
    return PopupMenuButton<_It>(
      tooltip: '사용자 메뉴',
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 1.0,
      position: PopupMenuPosition.over,
      child: child,
      itemBuilder: (context) {
        return List.generate(
          _userDropDownItems.length,
          (index) => _userDropDownItems[index].item != _It.divider
              ? PopupMenuItem(
                  value: _userDropDownItems[index].item,
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
                        Icon(_userDropDownItems[index].icon),
                        SizedBox(width: kSpace),
                        Text(_userDropDownItems[index].title),
                      ],
                    ),
                  ),
                )
              : PopupMenuDivider(),
        );
      },
    );
  }
}

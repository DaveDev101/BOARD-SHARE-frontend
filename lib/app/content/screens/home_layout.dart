import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeLayout extends HookConsumerWidget {
  const HomeLayout({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 16.0),
        child: Container(
          color: Color(0xFF1D1137),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 1440),
              child: AppBar(
                toolbarHeight: kToolbarHeight + 16.0,
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'BOARDSHARE',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: isLoggedIn ? Colors.red : Colors.green,
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        context.go('/');
                        // setState(() {
                        //   if (isLoggedIn) {
                        //     isLoggedIn = false;
                        //     selectedPage = 'Home';
                        //   } else {
                        //     isLoggedIn = true;
                        //     selectedPage = 'Login';
                        //   }
                        // });
                      },
                      child: Text(
                        // isLoggedIn ? 'Logout' : 'Login',
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
                elevation: 0,
                // bottom: PreferredSize(
                //   preferredSize: Size.fromHeight(1.0),
                //   child: Divider(color: Colors.grey.shade300, thickness: 1),
                // ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1200),
          color: Colors.white,
          child: Row(
            children: [
              SizedBox(
                width: 200,
                // decoration: BoxDecoration(
                //   border:
                //       Border(right: BorderSide(color: Colors.grey.shade300)),
                // ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildSidebarButton(context, 'Home', '/'),
                      _buildSidebarButton(context, 'Movies', '/movies'),
                      _buildSidebarButton(context, 'Genres', '/'),
                      // if (isLoggedIn)
                      ...[
                        _buildSidebarButton(context, 'Add Movie', '/'),
                        _buildSidebarButton(context, 'Manage Catalogue', '/'),
                        _buildSidebarButton(context, 'GraphQL', '/'),
                      ]
                    ],
                  ),
                ),
              ),
              // Expanded(child: _buildPageOf(selectedPage)),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSidebarButton(
    BuildContext context,
    String title,
    String route,
  ) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      onPressed: () {
        context.go(route);
        // setState(() {
        //   selectedPage = title;
        // });
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

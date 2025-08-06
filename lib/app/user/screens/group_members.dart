import 'package:flutter/material.dart';

class GroupMembersScreen extends StatelessWidget {
  final List<String> users = ['user1@example.com', 'user2@example.com'];

  GroupMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('그룹 사용자 관리',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            ...users.map((user) => ListTile(
                  title: Text(user),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      // 사용자 제거 로직
                    },
                  ),
                )),
            const Divider(),
            const Text('새 사용자 추가'),
            const SizedBox(height: 8),
            Row(
              children: [
                const Expanded(
                    child: TextField(
                        decoration: InputDecoration(hintText: '이메일 입력'))),
                const SizedBox(width: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    // 사용자 추가 로직
                  },
                  child:
                      const Text('추가', style: TextStyle(color: Colors.white)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

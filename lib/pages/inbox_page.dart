import 'package:flutter/material.dart';

import '../models/message.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text(
            messages[index].author,
          ),
          subtitle: Text(
            messages[index].content,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(messages[index].sentTime),
        );
      },
    );
  }
}

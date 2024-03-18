import 'package:flutter/cupertino.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatWidget extends StatelessWidget {
  ChatWidget({super.key, this.messages = const [], String userId = ''})
      : user = types.User(id: userId);

  final types.User user;

  final List<Message> messages;

  @override
  Widget build(BuildContext context) {
    return Chat(
      messages: [],
      onSendPressed: (PartialText) {},
      user: user,
    );
  }
}

import 'package:chatting_app/models/chat_preview_model.dart';
import 'package:chatting_app/theme.dart';
import 'package:flutter/material.dart';

class ChatPreview extends StatelessWidget {
  final ChatPreviewModel chatPreview;

  ChatPreview({required this.chatPreview});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2,
            color: Color(0XFF313441),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            chatPreview.imageUrl,
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatPreview.name,
                style: nameTextStyle,
              ),
              Text(
                chatPreview.message,
                style: messagesTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            chatPreview.time,
            style: timeTextStyle,
          ),
        ],
      ),
    );
  }
}

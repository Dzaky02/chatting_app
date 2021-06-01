import 'package:chatting_app/models/chat_preview_model.dart';
import 'package:chatting_app/theme.dart';
import 'package:chatting_app/widgets/chat_preview.dart';
import 'package:flutter/material.dart';

class ListChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List onlineList = [
      'assets/add_status.png',
      'assets/online_one.png',
      'assets/online_two.png',
      'assets/online_three.png',
      'assets/online_four.png',
    ];

    List chatList = [
      ChatPreviewModel(
        imageUrl: 'assets/messages_one.png',
        name: 'Keazia De Rezia',
        message: 'Sent a Photo',
        time: 'Now',
      ),
      ChatPreviewModel(
        imageUrl: 'assets/messages_two.png',
        name: 'Peter Park',
        message: 'Oke, sure',
        time: '11:2 PM',
      ),
      ChatPreviewModel(
        imageUrl: 'assets/messages_three.png',
        name: 'Loila Bae',
        message: 'Don\'t forget group as...',
        time: '10:6 PM',
      ),
      ChatPreviewModel(
        imageUrl: 'assets/messages_four.png',
        name: 'Ben Markz',
        message: 'Check you Email!',
        time: '9:11 PM',
      ),
      ChatPreviewModel(
        imageUrl: 'assets/messages_five.png',
        name: 'Alice March',
        message: 'No. Sorry',
        time: 'Yesterday',
      ),
      ChatPreviewModel(
        imageUrl: 'assets/messages_six.png',
        name: 'Josh George',
        message: 'Sent Sticker',
        time: 'Yesterday',
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0XFF252836),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 30,
                    right: 30,
                    bottom: 20,
                  ),
                  child: Column(
                    children: [
                      // HEADER PROFILE
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/header_profile.png',
                            width: 40,
                            height: 40,
                          ),
                          Image.asset(
                            'assets/menu_icon.png',
                            width: 18,
                            height: 14,
                          ),
                        ],
                      ),
                      // HEADER PROFILE
                      SizedBox(
                        height: 30,
                      ),
                      // ONLINE HEADER
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Online',
                            style: introductionText.copyWith(
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0XFF2F3142),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              '4',
                              style: introductionText.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // ONLINE HEADER
                    ],
                  ),
                ),
                // ADD STATUS AND ONLINE USER
                Container(
                  height: 58,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: onlineList.length,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(
                        left: (index == 0) ? 30 : 0,
                        right: (index == onlineList.length - 1) ? 30 : 20,
                      ),
                      child: Image.asset(
                        onlineList[index],
                        width: 50,
                        height: 58,
                      ),
                    ),
                  ),
                ),
                // ADD STATUS AND ONLINE USER
                Padding(
                  padding: EdgeInsets.only(
                    top: 22,
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    children: [
                      // MESSAGES HEADER
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Messages',
                            style: introductionText.copyWith(fontSize: 20),
                          ),
                          Icon(
                            Icons.search,
                            color: Color(0XFF959CA4),
                          ),
                        ],
                      ),
                      // MESSAGES HEADER
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 30),
                        height: 515,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: chatList.length,
                          itemBuilder: (context, index) => ChatPreview(
                            chatPreview: chatList[index],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0XFF2F3142),
            selectedItemColor: Color(0XFF6A6AE3),
            unselectedItemColor: Color(0XFF92949B),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 5),
                  child: Image.asset(
                    'assets/chat_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Chats',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 5),
                  child: Image.asset(
                    'assets/call_icon.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                label: 'Calls',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

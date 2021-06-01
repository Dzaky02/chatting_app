import 'package:chatting_app/pages/list_chat_page.dart';
import 'package:flutter/material.dart';
import 'package:chatting_app/theme.dart';

class StartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0XFF252836),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 80,
              right: 9,
              left: 17,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/splash_illustration.png',
                  width: 350,
                  height: 285,
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Instant Messaging, Simple And Personal',
                  style: introductionText,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'start your new journey in the Chat Us',
                  style: subIntroductionText,
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ListChatPage(),),);
                  },
                  child: Text(
                    'Let\'s Begin',
                    style: buttonText,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0XFF6A6AE3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 36,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

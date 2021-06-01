import 'package:chatting_app/theme.dart';
import 'package:flutter/material.dart';

class ListChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Color(0XFF252836),
          body: Column(
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
            ],
          ),
        ),
      ),
    );
  }
}

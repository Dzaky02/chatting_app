import 'package:chatting_app/theme.dart';
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
                    SizedBox(
                      height: 20,
                    ),
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

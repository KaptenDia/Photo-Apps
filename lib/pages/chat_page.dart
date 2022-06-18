import 'package:flutter/material.dart';
import 'package:photo_bypawel/theme.dart';

const newpostData = [
  {
    'nickName': 'Ridhwan Nordin',
    'userName': '@ridzjcob',
    'imgUrl': 'assets/images/pr.png',
  },
  {
    'nickName': 'Clem Onojeghuo',
    'userName': '@clemono2',
    'imgUrl': 'assets/images/pr.png',
  },
  {
    'nickName': 'jon Tyson',
    'userName': '@jontyson',
    'imgUrl': 'assets/images/pr.png',
  },
  {
    'nickName': 'Simon Zhu',
    'userName': '@smnzhu',
    'imgUrl': 'assets/images/pr.png',
  },
];

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: secondaryColor,
        title: Text(
          'Chats',
          style: primaryTextStyle.copyWith(
            fontSize: 27,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 1,
      );
    }

    return Column(
      children: [
        header(),
        NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: ListView(
            shrinkWrap: true,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detail_chat');
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultMargin,
                        left: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/profile1.png',
                            width: 64,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'James',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  width: 263,
                                  height: 36,
                                  child: Text(
                                    'Thank you! that was very helpful!',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffD0D3D9),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detail_chat');
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultMargin,
                        left: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/profile will.png',
                            width: 64,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Will Kenny',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  width: 263,
                                  height: 36,
                                  child: Text(
                                    'I know... I\'m trying to get the funds.',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffD0D3D9),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detail_chat');
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultMargin,
                        left: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/profile beth.png',
                            width: 64,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beth Williams',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  width: 263,
                                  height: 36,
                                  child: Text(
                                    'I\’m looking for tips around capturing the \nmilky way. I have a 6D with a 24-100mm...',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffD0D3D9),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'detail_chat');
                },
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: defaultMargin,
                        left: defaultMargin,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/profile rev.png',
                            width: 64,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rev Shawn',
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  width: 263,
                                  height: 36,
                                  child: Text(
                                    'Wanted to ask if you’re available for a portrait \nshoot next week.',
                                    style: primaryTextStyle.copyWith(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1,
                      color: Color(0xffD0D3D9),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

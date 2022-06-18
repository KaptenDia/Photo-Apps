import 'package:flutter/material.dart';
import 'package:photo_bypawel/pages/home_page.dart';
import 'package:photo_bypawel/theme.dart';

const newpostData = [
  {
    'nickName': 'Ridhwan Nordin',
    'userName': '@ridzjcob',
    'imgUrl': 'assets/images/pr.png',
    'profileImg': 'assets/images/profile r.png',
  },
  {
    'nickName': 'Clem Onojeghuo',
    'userName': '@clemono2',
    'imgUrl': 'assets/images/npclem.png',
    'profileImg': 'assets/images/pr clem.png',
  },
  {
    'nickName': 'jon Tyson',
    'userName': '@jontyson',
    'imgUrl': 'assets/images/npjon.png',
    'profileImg': 'assets/images/pr jon.png',
  },
  {
    'nickName': 'Simon Zhu',
    'userName': '@smnzhu',
    'imgUrl': 'assets/images/npsi.png',
    'profileImg': 'assets/images/pr si.png',
  },
];

class NewPostCard extends StatelessWidget {
  final newPost;
  NewPostCard(this.newPost);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 387,
      width: 343,
      margin: EdgeInsets.only(
        left: defaultMargin,
      ),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'detail-screen');
            },
            child: Image.asset(
              newPost['imgUrl'],
              width: 343,
              height: 343,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  newPost['profileImg'],
                  width: 28,
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        newPost['nickName'],
                        style: primaryTextStyle.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        newPost['userName'],
                        style: primaryTextStyle.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: primaryColor.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset(
        'assets/images/pr.png',
        fit: BoxFit.cover,
      ),
    );
  }
}

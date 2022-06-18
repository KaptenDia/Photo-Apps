import 'package:flutter/material.dart';
import 'package:photo_bypawel/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: secondaryColor,
      centerTitle: true,
      title: Text(
        'Profile',
        style: primaryTextStyle.copyWith(
          fontSize: 27,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
      elevation: 1,
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 130,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/profile rev.png',
                  width: 128,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: primaryTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Rev Shawn',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffD0D3D9),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Username',
                  style: primaryTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '@revshwn',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Color(0xffD0D3D9),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Email',
                  style: primaryTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'revshwan@mail.com',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 20,
                  ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: PreferredSize(
        child: header(),
        preferredSize: Size.fromHeight(55),
      ),
      body: content(),
    );
  }
}

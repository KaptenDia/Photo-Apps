import 'package:flutter/material.dart';
import 'package:photo_bypawel/theme.dart';
import 'dart:ui';

class LoggedOut extends StatelessWidget {
  const LoggedOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bgimage.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 307,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Column(
                  children: [
                    new Image.asset(
                      'assets/images/logo.png',
                      width: 206,
                      height: 54,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget customNavBar() {
      return Container(
        color: secondaryColor,
        height: 105,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 167,
                      height: 52,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'sign-in',
                          );
                        },
                        child: Text(
                          'LOG IN',
                          style: primaryTextStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(
                              color: primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 9,
                ),
                Column(
                  children: [
                    Container(
                      width: 167,
                      height: 52,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'Register',
                          style: primaryTextStyle.copyWith(
                              fontSize: 13,
                              color: secondaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: backgroundImage(),
      bottomNavigationBar: customNavBar(),
    );
  }
}

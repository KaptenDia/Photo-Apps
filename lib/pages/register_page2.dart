import 'package:flutter/material.dart';
import 'package:photo_bypawel/theme.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 16,
                top: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  'assets/images/back.png',
                  width: 23,
                  height: 22,
                ),
              ),
            ),
            SizedBox(
              height: 33,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
              ),
              child: Text(
                'Register',
                style: primaryTextStyle.copyWith(
                  fontSize: 36,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 3,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor,
                      width: 3,
                    ),
                  ),
                ),
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        height: 52,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 16,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            style: TextButton.styleFrom(
              backgroundColor: primaryColor,
            ),
            child: Text(
              'SIGN UP',
              style: primaryTextStyle.copyWith(
                color: secondaryColor,
                fontSize: 13,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      );
    }

    Widget termsofService() {
      return Container(
        height: 36,
        margin: EdgeInsets.only(
          top: 32,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Text(
            'By signing up, you agree to Photo\’s Terms of Service and \nPrivacy Policy.',
            style: primaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            usernameInput(),
            signUpButton(),
            termsofService(),
          ],
        ),
      ),
    );
  }
}

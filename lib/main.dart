import 'package:flutter/material.dart';
import 'package:photo_bypawel/pages/detail_chat.dart';
import 'package:photo_bypawel/pages/home_page.dart';
import 'package:photo_bypawel/pages/logged_out_page.dart';

import 'package:photo_bypawel/pages/login_page.dart';
import 'package:photo_bypawel/pages/main_page.dart';
import 'package:photo_bypawel/pages/register_page.dart';
import 'package:photo_bypawel/pages/register_page2.dart';
import 'package:photo_bypawel/pages/search_page.dart';
import 'package:photo_bypawel/widgets/newPost_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoggedOut(),
        'sign-in': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'register2': (context) => RegisterPage2(),
        'home': (context) => MainPage(),
        'detail_chat': (context) => DetailChat(),
        'search': (context) => SearchPage(),
        'profile': (context) => HomePage(),
        'detail-screen': (context) => DetailScreen(),
      },
    );
  }
}

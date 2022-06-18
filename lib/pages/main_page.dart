import 'package:flutter/material.dart';
import 'package:photo_bypawel/pages/chat_page.dart';
import 'package:photo_bypawel/pages/home_page.dart';
import 'package:photo_bypawel/pages/profile_page.dart';
import 'package:photo_bypawel/pages/search_page.dart';
import 'package:photo_bypawel/theme.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customNavigationBar() {
      return BottomNavigationBar(
        backgroundColor: secondaryColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            print(value);
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Image.asset(
                'assets/icons/home.png',
                width: 30,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Image.asset(
                'assets/icons/search.png',
                width: 30,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Image.asset(
                'assets/icons/new.png',
                width: 90,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Image.asset(
                'assets/icons/Comment.png',
                width: 30,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Image.asset(
                'assets/icons/profile.png',
                width: 23,
              ),
            ),
            label: '',
          ),
        ],
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
          break;
        case 1:
          return const SearchPage();
          break;
        case 2:
          return const HomePage();
          break;
        case 3:
          return const ChatPage();
          break;
        case 4:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: secondaryColor,
      bottomNavigationBar: customNavigationBar(),
      body: body(),
    );
  }
}

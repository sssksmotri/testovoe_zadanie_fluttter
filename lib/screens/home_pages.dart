import 'package:flutter/material.dart';
import 'package:testovoe_zadanie/screens/chat_pages.dart';
import 'package:testovoe_zadanie/screens/like_pages.dart';
import 'package:testovoe_zadanie/screens/profile_pages.dart';
import 'package:testovoe_zadanie/screens/setting_pages.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}




class _MyHomePageState extends State<MyHomePage> {

  int currentindex = 0;
  bool isChatsFull = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: currentindex),
        ),
        bottomNavigationBar:   Container(
          decoration: const BoxDecoration(
            color: Color(0xFF191818),
          ),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(0, 'assets/icons/home.png'),
              _buildNavItem(1, 'assets/icons/chat.png'),
              _buildNavItem(2, 'assets/icons/like.png'),
              _buildNavItem(4, 'assets/icons/setting.png'),
            ],
          ),
        ),
      ),
    );
  }




  Widget _buildNavItem(int index, String assetPath) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentindex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 50,
        height: 40,
        child: Center(
          child: Image.asset(
            assetPath,
            width: 24,
            height: 24,
            color: currentindex == index ? const Color(0xFFF2C94C) : Colors
                .purple,
          ),
        ),
      ),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const ProfilePages();
        break;
      case 1:
        widget = const ChatPages();
        break;
      case 2:
        widget = const LikePages();
        break;
      default:
        widget = const SettingPages();
    }
    return widget;
  }
}
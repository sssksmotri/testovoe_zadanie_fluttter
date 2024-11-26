import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widget/bottomSheetWidget.dart';

class ActionMain {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF0D1333),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Color(0xFF0D1333),
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/bottomSheetmask.png",width: 250, height: 90,),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(10),
                    child:  Text(
                      "РЕЖИМ ИНКОГНИТО НА 24 ЧАСА",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Expanded(child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    "Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                )
                )
                ],
              ),
              const SizedBox(height: 32),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IncognitoOption(
                    icon: "assets/icons/Mask.png",
                    date: "1",
                    price: "99 ₽",
                    isHighlighted: false,
                  ),
                  IncognitoOption(
                    icon: "assets/icons/Mask.png",
                    price: "199 ₽",
                    isHighlighted: true,
                    date: "3",
                    discount: "Хит",
                  ),
                  IncognitoOption(
                    icon: "assets/icons/Mask.png",
                    price: "399 ₽",
                    isHighlighted: true,
                    discount: "-42%",
                    date: "7",
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Покупка Инкогнито!");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFAA044A),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Купить",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () {
                    print("Переход к условиям");
                  },
                  child: const Text(
                    "УСЛОВИЯ И ПОЛОЖЕНИЯ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void navigateToFullScreen(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    ).then((_) async {
      final prefs = await SharedPreferences.getInstance();

      await prefs.remove('isOnChatsFull');
    });
  }

}


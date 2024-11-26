import 'package:flutter/material.dart';

class ChatsFull extends StatefulWidget {
  final String imageUrl;
  const ChatsFull({super.key, required this.imageUrl});

  @override
  State<ChatsFull> createState() => _ChatsFullState();
}

class _ChatsFullState extends State<ChatsFull> {
  bool NotificationVisible = true;

  @override
  Widget build(BuildContext context) {
    // Получаем высоту экрана с учетом нижней панели
    double screenHeight = MediaQuery.of(context).size.height;
    double bottomPadding = MediaQuery.of(context).viewInsets.bottom; // Padding от нижней панели

    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xFFD9D9D9),
              height: screenHeight * 0.2, // Устанавливаем фиксированную высоту для первого контейнера
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: NetworkImage(widget.imageUrl),
                    ),
                  ],
                ),
              ),
            ),
            if (NotificationVisible)
              Container(
                color: const Color(0xFF7446AC),
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/9067/ad24/402f9dd231e577d9e7f115d9fd7eaed8?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FNqnHJoUc6smnI2sFwtzDMQSC4Da8xX9sECZo7MtiWtrKSrVQu393PVyKVxGNTbSniMpXiC9rKla~rcMqzj4BNtu2rSBj2XVCarcreZXh3SuroUYW5gYXy0bzzeJy7dupewMcZcz5T2YmOCerQGrc~RZEoXNjIOQGrNgUVC-1ZvmzAKLxz9cNXLHB9GGiaDJ~uQUFaxLQIS9yWFIe7z89ahgAZhcN2BPXE6Ignc6Ds6f2vf-6XdIgyjhPAMDpJ3SpZUh4MJgPcDSrSCTBTWOvZgwrJ2af7p~X9GpM6SsLYpXw~0GP06m~1QpUNngpzLLYFBSr3bQ3T5wusPZkWV65g__",
                              width: 22,
                              height: 22,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              "2 общих соблазна",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, color: Colors.white),
                          onPressed: () {
                            setState(() {
                              NotificationVisible = false;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            Expanded(
              child: Container(
                color: const Color(0xFF393737),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
                  child: Container(
                    margin: EdgeInsets.only(bottom: bottomPadding, top: 50),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Начни общение",
                              style: TextStyle(color: Color(0xFF8D8D8D)),
                            )
                          ],
                        ),
                        const Expanded(child: SizedBox.shrink()),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/icons/plus.png",
                                    width: 40,
                                    height: 40,
                                  ),
                                  color: const Color(0xFF8D8D8D),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.7,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      hintText: 'Сообщение...',
                                      hintStyle: const TextStyle(
                                        color: Colors.grey,
                                      ),
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                          color: Color(0xFF8D8D8D),
                                          width: 1.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                          color: Color(0xFF8D8D8D),
                                          width: 1.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: const BorderSide(
                                          color: Color(0xFF8D8D8D),
                                          width: 2.0,
                                        ),
                                      ),
                                      suffixIcon: Image.asset("assets/icons/chuvak.png"),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Image.network(
                                    "https://img.icons8.com/?size=100&id=jkqQE2I90I8R&format=png&color=000000",
                                    color: const Color(0xFF8D8D8D),
                                    width: 35,
                                    height: 35,
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



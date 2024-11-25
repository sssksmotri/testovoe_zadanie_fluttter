import 'package:flutter/material.dart';

import 'ChatItem.dart';



class ChatPages extends StatefulWidget {
  const ChatPages({super.key});

  @override
  State<ChatPages> createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages> {

  bool isSwitched = false;
  bool SwitchVisible=false;
  bool ButtonVisible=true;

  final List<Map<String, dynamic>> chatData = [
    {
      'datetime': '23 ч 43 мин',
      'lastMessage': 'Встретимся? Я рядом',
      'imageUrl': 'https://s3-alpha-sig.figma.com/img/92bd/ca1b/c6077acf7bcdecb741fa890dfaede950?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UriO-trmj0UXuKDd3Kd0~PtCoOT7vl1zUy02tT9kQ49RpfMjCgRMAvb7ahQuws5In26aNNkYCgiQOQ7BRgERg1lRnrvN3J3T7F4PRo8lpCmxMHm6a8NL1BgLKll9hI92BSNrXNT6pjd8HPFIGgAkcivUgoe-m~45O5BWV5dzbW-clPc6Wv0xg8N1hKKFciQVLpYEDzEDHV9riaGBDnQNOHl5qNSwHry2ri3EqWDw7fzIhdCXzin7Z0wVEuGJZPjapgPLWAIZjiNgFCsOaK3BaALNTf8FqeeRfEPBj~xxXRAfQCHqw2Yz22B8OaF84HiKo-~4TvGg2xv4WA-PtXjnSQ__',
      'hasDot':false
    },
    {
      'datetime': '20 ч 40 мин',
      'lastMessage': 'Отлично выглядишь!',
      'imageUrl': 'https://s3-alpha-sig.figma.com/img/01c3/5969/e3ab766b4e3463d40122834d9c542e47?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TTa~l5TWFWfBCMiombeJf7Pp0z6xjpC2ogvp2~gSaMF~zUvfpCfR1Kh9gIE~NOJAAeKfGCre~vWmkOjP0MbjjjS07jfS9kU204NDuPMtmnhYDRNmR1a-Q3AXYXEn9p1jfIdjHSS-1VfX~OlqmDZ8SVfWOXHR5G~oBH62XsjFiBqAsyXVgeFgKJkSgqWnbrbKXkbIrqDkNgytD8COxd9mqIpZZ48Rnu6yhwEC0m948L9TP2UC48mm-ChEFFL~PFkK3LbYr47f~uHWK-hGi7rh2faV~GF42eV48AE~9VdVfx2v05RrLWAH9eK8tcoZHQEsQrwayNkCxKlOqRS7PLWcGg__',
      'hasDot':true
    },
    {
      'datetime': '18 ч 40 мин',
      'lastMessage': 'Давно тебя не видел!',
      'imageUrl': 'https://s3-alpha-sig.figma.com/img/9894/aed2/75082e002939dad7b2776bd40837362c?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UT3zi74Gu7sSw79Xa66Cgb35fVuRM5q9FVUQiWSAc7u9Ua54PO5L-u7QEvm6WIR7CvulQ~jl75PS3OHXVPC0yAhv9F25ZKpvcGA5uOtJn7fQQnl851CpoulEuxXwTvqrAz-9Bwm8eMDcPwaipYUzUeybiVRguTpXQ8f34c13BtTIPw2qWPvo2vJoViGZZszlaZdftUlcXUP6Bc32J8V5bpAgoNGcEEp0WrgSVXx207KlMgIH6evDcJZut3gUkuPA1i0lkEhhUviL3Qbp3N8M01V3LuZxPbcc4UOLOk~RV1ZjIJ7QoC0MGYkHAJf7Jr25OvysSWV1H9IEjYghcz~f2w__',
      'hasDot':false
    },
    {
      'datetime': '09 ч 40 мин',
      'lastMessage': 'Как ты?',
      'imageUrl': 'https://s3-alpha-sig.figma.com/img/9652/7261/655a798a633b1f4b17e4cf94a922756d?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=pCmoKM93ZuPUOeSiM4u4mCFR9MjNfpIUNLNGTopvTr9Nbz6PV~G5XR86SHHSCI5pQhVNGORngUUiCtjBYriwda5-~kp0vYR-LphVioIIC58~TAsjdB9q08kg1Rm0Gm~xjUkrQYydc3uUB6QovNI5vQ2Xehb8UUZTzjfDD4YgU2fwszWQcbWvhrjcKg~gbySjdo95VZld06CZrdau0LXEigm7cV9SAibwiAl41Q8QVZ34q8BDyJyxydCVvqqR2fLM6UtqTe1gmzJZkf5vnd07S0mGo9TgJBNEf6cJ0cUZj~MqhrGkqcQabFQiXPRlixgrJhXscQCDMhCzFzfCxh0IJA__',
      'hasDot':false
    },

    {
      'datetime': '03 ч 04 мин',
      'lastMessage': 'Скоро увидимся!',
      'imageUrl': 'https://s3-alpha-sig.figma.com/img/2a5f/aa19/4f84d380cb4f0211f7ce3b36055ddf4d?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EDxGIDr-Ds4cYY3Gg5qimBbyYnCbV3ygel09QLvtUaClgmBW5aaYXHeAK~90QlQMAa0u88cwrq0wXT8BsC9Xh-i6zm02eW-TZ9oD2G2EYYJI95AyZMCI9w55vvCP3Cfkpog6reDCl1Yq8weBG~svOVJY~S-IEavll2KHxtr4iTTTqBsCtOhhDZgRT2ZRBHZz9inyssl71EpuM-e7PlNT2qAWi3CoPxrg-SlxbCPgNo-YUGkKoQuGJbN0B-y3CudIPRFtxGW5s50FB1QOSD9Ov9JGASiF9k~WwpTPuyR~wMVI7qBaZYahjThFwDn2MbEXR7MuRVxzvydUkp1aazu29A__',
      'hasDot':false
    },
    {
      'datetime': '01 ч 09 мин',
      'lastMessage': 'Давай встретиться на выходных!',
      'imageUrl': 'https://s3-alpha-sig.figma.com/img/2a2c/e021/88cde527187fd78b0ae252f614aeec5a?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GFLdo0uVZVL9MKrqWZBgF-qFYi5qqtFigjIQV~JPm8xcZS4dXoYH2knwQS2lfvm2xdtb-Wm~l4Dfw3H-XIpMg-XD2ZUSGdsWympUDEjF1O2x0eJirKtjyYoRrpFac9JKCbXH3GByAInRUEQ4V396I8fXjXtRGJy7yIZK-ttUAaWcFdM9o2QqXAcbjFsrkMgKrydP4wdcDZpL3uVa3X90BMMppOLj-zmtb~LayymzHmV8pg7uUrU95xBg3NXzHErzi6fVOjfAVcEonnSoAZ4atJ1JdmILjAj~jbQz~chCP-9fVTNIW~k5b-ZThl2yag6oPfc1eJaNnNRDhysqGnalUA__',
      'hasDot':false
    },
  ];

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.grey[900],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          height: 200,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Настройки",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context); // Закрываем BottomSheet
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    isSwitched ? "ON" : "OFF",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: isSwitched ? Colors.white : Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSwitched = !isSwitched;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        color: isSwitched ? Colors.white : Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: AnimatedAlign(
                        duration: const Duration(milliseconds: 200),
                        alignment: isSwitched
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            isSwitched ? Icons.mic : Icons.mic_off,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: SafeArea(
          child:Column(
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.2,
                width: double.infinity,
              ),
              Expanded(
              child:Container(
                color: const Color(0xFF393737),
                width: double.infinity,
                child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("ЧАТЫ",
                            style: TextStyle(
                                fontSize: 27,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                    Row(
                      children: [
                    Text(
                    isSwitched ? "ON" : "OFF",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isSwitched ? Colors.white : Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 8),
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (!ButtonVisible) {
                                  setState(() {
                                    isSwitched = !isSwitched;
                                  });
                                }
                              },
                              child: Container(
                                width: 50,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: isSwitched
                                      ? Colors.white
                                      : Colors.grey[800],
                                  borderRadius:
                                  BorderRadius.circular(30),
                                ),
                                child: AnimatedAlign(
                                  duration:
                                  const Duration(milliseconds: 200),
                                  alignment: isSwitched
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Container(
                                    width: 22,
                                    height: 22,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      isSwitched
                                          ? Icons.mic
                                          : Icons.mic_off,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (ButtonVisible)
                              Positioned.fill(
                                child: GestureDetector(
                                  onTap: () {
                                    ButtonVisible=false;
                                    showBottomSheet(context);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius:
                                      BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        width: 50,
                                        height: 35,
                                        "assets/icons/Switch.png",
                                      ),
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
                  Expanded(child: ListView.builder(
                    itemCount: chatData.length,
                    itemBuilder: (context, index) {
                      final chat = chatData[index];
                      return ChatItem(
                        datetime: chat['datetime']!,
                        lastMessage: chat['lastMessage']!,
                        imageUrl: chat['imageUrl']!,
                        hasDot: chat['hasDot'],
                      );
                    },
                  ),
                )
                    ],
                  )
                ),
              ),

            )
          ],
          )
      ),
    ),
    );
  }
}

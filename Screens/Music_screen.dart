import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class MusicScreen extends StatefulWidget {
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/music_player/background.png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: Container(
                    height: 50,
                    width: size.width - 40,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white10,
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Mdi.microphone,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  child: Container(
                    height: 70,
                    width: size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Venge Porona Evabe',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(0.8),
                                fontWeight: FontWeight.bold)),
                        Text(
                          'Pritam Hasan',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  height: size.height / 1,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 42, left: 43, right: 42, bottom: 20),
                        child: Container(
                          height: size.height - 80,
                          width: size.width - 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [Color(0xFF177281), Color(0xFF31BAC7)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff31BAC7),
                                offset: Offset(8, 6),
                                blurRadius: 12,
                              ),
                              BoxShadow(
                                color: Color(0xFF31BAC7),
                                offset: Offset(-8, -6),
                                blurRadius: 12,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                'assets/music_player/album.jpg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 92,
                        width: size.width - 50,
                        child: SingleChildScrollView(
                          child: Text(
                            'Lyrics:\nযখন সন্ধ্যা নেমে জোনাকিরা আসে \n আর ফুলগুলো সুবাস ছড়ায় রাতে, \n তোমার ঘরের পুতুল তখন\nচুপ অভিমানে ঘরে ফিরে যায় ভাঙ্গা মনে\nতাইতো রাত আমায় বলে তুমি ভেঙ্গে পড়োনা এভাবে\nকেউ থাকে না চিরোদিন সাথে, যদি কাঁদো এভাবে তার ঘুম ভেঙ্গে যাবে, ভেঙ্গে পড়ো না এই রাতে। ও চাঁদ, বলোনা সে লুকিয়ে আছে কোথায়? সে কি খুব কাছের তারাটা তোমার সে কি করেছে অভিমান আবার, হঠাৎ সে চলে গেছে শূন্যতা যেন এ ঘরে, তাই তো রাত আমায় বলে .. তুমি ভেঙ্গে পড়োনা এভাবে কেউ থাকে না চিরোদিন সাথে, যদি কাঁদো এভাবে তার ঘুম ভেঙ্গে যাবে, ভেঙ্গে পড়ো না রাতে তুমি ভেঙ্গে পড়োনা এভাবে কেউ থাকে না চিরোদিন সাথে, যদি কাঁদো এভাবে তার ঘুম ভেঙ্গে যাবে, ভেঙ্গে পড়ো না এই রাতে।',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.mina(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

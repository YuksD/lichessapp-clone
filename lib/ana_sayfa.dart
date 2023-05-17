import 'package:flutter/material.dart';

import 'anasayfa_drawer/drawer_alt.dart';
import 'anasayfa_drawer/drawer_ust.dart';
import 'anasayfa_tabbar/tab_chess.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});
  @override
  Widget build(BuildContext context) {
    Color lichessBackground = Color.fromARGB(255, 231, 229, 234);
    double yukseklik = MediaQuery.of(context).size.height;
    double genislik = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: yukseklik / 18,
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.track_changes_sharp),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: lichessBackground,
        elevation: 0,
        title: const Text('lichess.org'),
        toolbarTextStyle: Typography.blackCupertino.bodyMedium,
        titleTextStyle: Typography.blackCupertino.titleLarge,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(height: yukseklik * (8 / 18), child: const TabbarChess()),
          Container(
            width: genislik,
            color: lichessBackground,
            height: yukseklik * (3 / 18),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: yukseklik / 90,
                  ),
                  Expanded(
                      child: Card(
                          shadowColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Color.fromARGB(255, 242, 239, 245))),
                              onPressed: () {},
                              child: const Text(
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 0.8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  'YENI BIR OYUN KUR')))),
                  Expanded(
                      child: Card(
                          shadowColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Color.fromARGB(255, 242, 239, 245))),
                              onPressed: () {},
                              child: const Text(
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 0.8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  'BIR ARKADASINLA OYNA')))),
                  Expanded(
                      child: Card(
                          shadowColor: Color.fromARGB(255, 255, 255, 255),
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(vertical: 3),
                          child: ElevatedButton(
                              style: const ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Color.fromARGB(255, 242, 239, 245))),
                              onPressed: () {},
                              child: const Text(
                                  style: TextStyle(
                                    wordSpacing: 1,
                                    letterSpacing: 0.8,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  'BILGISAYARA KARSI OYNA')))),
                  SizedBox(
                    height: yukseklik / 90,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: lichessBackground,
            height: yukseklik / 18,
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: yukseklik / 18,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                  style:
                                      TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                                  '15.356'))),
                      SizedBox(
                          height: yukseklik / 18,
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                  style: TextStyle(color: Colors.black), 'Çevrimiçi Oyuncu'))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900),
                              '6.598')),
                      TextButton(
                          onPressed: () {},
                          child: const Text(style: TextStyle(color: Colors.black), 'Oyun')),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: lichessBackground,
            height: yukseklik * (2.2 / 18),
            child: Column(
              children: const [
                ListTile(
                    contentPadding: EdgeInsets.all(6),
                    subtitle: Text('Late night fancy chess... lichess...'),
                    leading: Icon(color: Color.fromARGB(255, 184, 113, 8), Icons.mic),
                    title: Text(
                        style: TextStyle(
                            color: Color.fromARGB(255, 184, 113, 8), fontWeight: FontWeight.w700),
                        'IM Marc Esserman')),
              ],
            ),
          ),
          Container(
            color: lichessBackground,
            height: yukseklik * (2.2 / 18),
            child: Column(
              children: const [
                ListTile(
                    contentPadding: EdgeInsets.all(6),
                    trailing: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                        'geçen hafta'),
                    subtitle: Text('Perşembe saat 22.30'),
                    leading: Icon(Icons.edit_note_outlined),
                    title: Text('Life moves pretty fast')),
              ],
            ),
          ),
          Container(
            width: genislik,
            height: yukseklik * (10 / 18),
            color: lichessBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 184, 113, 8)),
                              'GM '),
                          Text('Mustafa_Yilmaz '),
                          Text(style: TextStyle(fontWeight: FontWeight.w300), '2632'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(style: TextStyle(color: Color.fromARGB(255, 200, 40, 28)), '0:53'),
                        ],
                      ),
                    ),
                  ],
                ),
                Image.asset("assets/usta-maci.png"),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 184, 113, 8)),
                              'IM '),
                          Text('Cem_Kaan_Gokerkan '),
                          Text(style: TextStyle(fontWeight: FontWeight.w300), '2489'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('0:17'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: yukseklik * (10 / 18),
            width: genislik,
            color: lichessBackground,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Günün Bulmacası'),
                  ],
                ),
                Image.asset("assets/gunun-bulmacasi.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Hamle Siyahta'),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 24,
            ),
            UstDrawer(),
            AltDrawer()
          ],
        ),
      ),
    );
  }
}

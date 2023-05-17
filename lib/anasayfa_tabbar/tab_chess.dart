import 'package:flutter/material.dart';

import '../hizli_eslesme.dart';
import 'local_json.dart';
import 'tabbar_boxes.dart';
import 'yazismali_mac_tablosu.dart';

class TabbarChess extends StatefulWidget {
  const TabbarChess({super.key});

  @override
  State<TabbarChess> createState() => _TabbarChessState();
}

class _TabbarChessState extends State<TabbarChess> {
  @override
  Widget build(BuildContext context) {
    Color lichessBackground = const Color.fromARGB(255, 231, 229, 234);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: lichessBackground,
            toolbarHeight: 0,
            bottom: const TabBar(
                labelColor: Color.fromARGB(255, 233, 82, 0),
                unselectedLabelColor: Colors.black,
                indicatorColor: Color.fromARGB(255, 233, 82, 0),
                labelPadding: EdgeInsets.all(10),
                tabs: [Text('Hızlı eşleşme'), Text('Yazışma')]),
          ),
          body: TabBarView(children: [
            TabbarBoxes(),
            Column(
              children: [
                YazismaTablosuBas(),
                Container(height: 225, child: LocalJson()),
              ],
            ),
          ])),
    );
  }

  SizedBox tabbarMatchBox(double genislik, double yukseklik) {
    return SizedBox(
        width: genislik / 3,
        height: (yukseklik * (7 / 18)) / 4,
        child: const HizliEslesme(matchDurationType: 'sa', matchType: 'as'));
  }
}

import 'package:flutter/material.dart';

import '../hizli_eslesme.dart';

class TabbarBoxes extends StatelessWidget {
  const TabbarBoxes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: HizliEslesme(matchDurationType: '1 + 0', matchType: 'Bullet')),
                Expanded(child: HizliEslesme(matchDurationType: '2 + 1', matchType: 'Bullet')),
                Expanded(child: HizliEslesme(matchDurationType: '3 + 0', matchType: 'Blitz')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: HizliEslesme(matchDurationType: '3 + 2', matchType: 'Blitz')),
                Expanded(child: HizliEslesme(matchDurationType: '5 + 0', matchType: 'Blitz')),
                Expanded(child: HizliEslesme(matchDurationType: '5 + 3', matchType: 'Blitz')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: HizliEslesme(matchDurationType: '10 + 0', matchType: 'Rapid')),
                Expanded(child: HizliEslesme(matchDurationType: '10 + 5', matchType: 'Rapid')),
                Expanded(child: HizliEslesme(matchDurationType: '15 + 10', matchType: 'Rapid')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: HizliEslesme(matchDurationType: '30 + 0', matchType: 'Clasical')),
                Expanded(child: HizliEslesme(matchDurationType: '30 + 20', matchType: 'Clasical')),
                Expanded(child: HizliEslesme(matchDurationType: '', matchType: 'Özel')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

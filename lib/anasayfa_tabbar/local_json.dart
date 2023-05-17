import 'dart:convert';
import 'package:flutter/material.dart';
import '../model/oyuncu_model.dart';

class LocalJson extends StatefulWidget {
  const LocalJson({super.key});

  @override
  State<LocalJson> createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  Future<List<Oyuncu>> oyuncularJsonOku() async {
    try {
      // await Future.delayed(const Duration(milliseconds: 5000), () {
      //   return Future.error('ZAMAN AŞIMI');
      // });
      debugPrint('islem basladi');
      await Future.delayed(const Duration(seconds: 1), () {});
      debugPrint('3 saniye doldu');
      String okunanString =
          await DefaultAssetBundle.of(context).loadString('assets/data/oyuncular.json');
      debugPrint(okunanString);
      var jsonObject = jsonDecode(okunanString);

      List<Oyuncu> tumOyuncular =
          (jsonObject as List).map((oyuncuMap) => Oyuncu.fromMap(oyuncuMap)).toList();
      debugPrint(tumOyuncular[0].toString());
      debugPrint(tumOyuncular.length.toString());

      return tumOyuncular;
    } catch (e) {
      return Future.error(e.toString());
    }
  }

  String _title = 'Local Json İşlemleri';
  late final Future<List<Oyuncu>> _listeyiDoldur;
  @override
  void initState() {
    super.initState();
    _listeyiDoldur = oyuncularJsonOku();
  }

  @override
  Widget build(BuildContext context) {
    oyuncularJsonOku();
    return Scaffold(
      body: FutureBuilder<List<Oyuncu>>(
          future: _listeyiDoldur,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Oyuncu> oyuncuListesi = snapshot.data!;
              return ListView.builder(
                  itemCount: oyuncuListesi.length,
                  itemBuilder: (context, index) {
                    var oAnkiOyuncu = oyuncuListesi[index];
                    return Container(
                      height: 28,
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 0.5))),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [Text(oAnkiOyuncu.taraf)],
                              )),
                          Expanded(
                              flex: 18,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(oAnkiOyuncu.oyuncuAdi)],
                              )),
                          Expanded(
                              flex: 9,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(oAnkiOyuncu.puan.toString())],
                              )),
                          Expanded(
                              flex: 12,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(oAnkiOyuncu.zaman)],
                              )),
                          Expanded(
                              flex: 9,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text((oAnkiOyuncu.mod == true ? 'Puanlı' : 'Puansız'))],
                              )),
                        ],
                      ),
                    );
                  });
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

class YazismaTablosu extends StatefulWidget {
  const YazismaTablosu({
    super.key,
    this.yazismaTaraf = 'hatagg',
    this.yazismaOyuncu = 'hatagg',
    this.yazismaPuan = 'hatagg',
    this.yazismaZaman = 'hatagg',
    this.yazismaMod = 'hatagg',
  });

  final String yazismaTaraf;

  final String yazismaOyuncu;

  final String yazismaPuan;

  final String yazismaZaman;

  final String yazismaMod;

  @override
  State<YazismaTablosu> createState() => _YazismaTablosuState();
}

class _YazismaTablosuState extends State<YazismaTablosu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //yazisma_tablosu_baslik(),
        Row(
          children: [
            Expanded(
                flex: 3,
                child: Column(
                  children: [Text('BB')],
                )),
            Expanded(
                flex: 18,
                child: Column(
                  children: [Text(widget.yazismaOyuncu)],
                )),
            Expanded(
                flex: 9,
                child: Column(
                  children: [Text('data')],
                )),
            Expanded(
                flex: 9,
                child: Column(
                  children: [Text('data')],
                )),
            Expanded(
                flex: 12,
                child: Column(
                  children: [Text('data')],
                )),
          ],
        ),
      ],
    );
  }

  Container yazisma_tablosu_baslik() {
    return Container(
      height: 50,
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [Text('')],
              )),
          Expanded(
              flex: 18,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Oyuncu')],
              )),
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Puan')],
              )),
          Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Zaman')],
              )),
          Expanded(
              flex: 12,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Mod')],
              )),
        ],
      ),
    );
  }
}


// ListTile(
//                       title: Text(oAnkiAraba.arabaAdi),
//                       subtitle: Text(oAnkiAraba.ulke),
//                       leading:
//                           CircleAvatar(child: Text(oAnkiAraba.model[0].elektrikliMi.toString())),
//                     );
// To parse this JSON data, do
//
//     final oyuncu = oyuncuFromMap(jsonString);
import 'dart:convert';

Oyuncu oyuncuFromMap(String str) => Oyuncu.fromMap(json.decode(str));

String oyuncuToMap(Oyuncu data) => json.encode(data.toMap());

class Oyuncu {
  Oyuncu({
    required this.taraf,
    required this.oyuncuAdi,
    required this.puan,
    required this.zaman,
    required this.mod,
  });

  final String taraf;
  final String oyuncuAdi;
  final int puan;
  final String zaman;
  final bool mod;

  factory Oyuncu.fromMap(Map<String, dynamic> json) => Oyuncu(
        taraf: json["taraf"],
        oyuncuAdi: json["oyuncu_adi"],
        puan: json["puan"],
        zaman: json["zaman"],
        mod: json["mod"],
      );

  Map<String, dynamic> toMap() => {
        "taraf": taraf,
        "oyuncu_adi": oyuncuAdi,
        "puan": puan,
        "zaman": zaman,
        "mod": mod,
      };
}

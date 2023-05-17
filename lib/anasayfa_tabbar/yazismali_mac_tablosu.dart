import 'package:flutter/material.dart';

class YazismaTablosu extends StatelessWidget {
  const YazismaTablosu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        YazismaTablosuBas(),
      ],
    );
  }
}

class YazismaTablosuBas extends StatelessWidget {
  const YazismaTablosuBas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Oyuncu')],
              )),
          Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Puan')],
              )),
          Expanded(
              flex: 12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Zaman')],
              )),
          Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Mod')],
              )),
        ],
      ),
    );
  }
}

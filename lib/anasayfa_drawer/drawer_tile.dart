import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key, required this.ikon, required this.title});
  final Icon ikon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [ikon, Text(title)],
      ),
    );
  }
}

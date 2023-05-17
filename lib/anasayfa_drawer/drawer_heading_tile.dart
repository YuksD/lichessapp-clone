import 'package:flutter/material.dart';

class DrawerHeadingTile extends StatelessWidget {
  const DrawerHeadingTile({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [Text(title)],
      ),
    );
  }
}

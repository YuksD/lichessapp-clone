import 'package:chess/anasayfa_drawer/drawer_heading_tile.dart';
import 'package:flutter/material.dart';

import 'drawer_tile.dart';

class AltDrawer extends StatelessWidget {
  const AltDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerHeadingTile(title: 'İzle'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
        DrawerTile(ikon: Icon(Icons.account_balance_rounded), title: 'An'),
      ],
    );
  }
}

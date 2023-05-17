import 'package:flutter/material.dart';

class UstDrawer extends StatelessWidget {
  const UstDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(33, 78, 70, 70).withOpacity(0.1),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.language_outlined),
              Column(
                children: [
                  Row(
                    children: [Text('Ping'), Text('15 ms')],
                  ),
                  Row(
                    children: [Text('Ping'), Text('15 ms')],
                  )
                ],
              ),
              Icon(Icons.question_mark_rounded),
            ],
          ),
          Row(
            children: [
              Text(
                'OyuncuAdi',
                style: TextStyle(fontSize: 26),
              )
            ],
          ),
        ],
      ),
    );
  }
}

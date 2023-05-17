import 'package:flutter/material.dart';

class HizliEslesme extends StatelessWidget {
  const HizliEslesme({
    super.key,
    required this.matchDurationType,
    required this.matchType,
  });
  final String matchType;
  final String matchDurationType;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Color.fromARGB(255, 241, 235, 235),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
            backgroundColor: Color.fromARGB(255, 201, 197, 197).withOpacity(0.2),
            side: BorderSide(color: Color.fromARGB(255, 87, 82, 82))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w300),
                  matchDurationType),
              Text(
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w300),
                  matchType),
            ],
          ),
        ),
      ),
    );
  }
}

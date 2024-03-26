import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;

  const CardDetail(
      {super.key, required this.icon, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.black,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text('data'),
                Text(desc),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

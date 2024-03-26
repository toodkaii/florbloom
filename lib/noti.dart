import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NOTIFICATION',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32,
            fontFamily: 'InriaSerif',
          ),
        ),
        backgroundColor: Color.fromRGBO(164, 159, 91, 1),
        elevation: 0,
      ),
      body: Stack(children: [
        const Center(
          child: Image(image: AssetImage("assets/images/noti.png")),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
          child: Center(
            child: Text('Your notifications are empty.',
                style: TextStyle(fontSize: 16, fontFamily: 'InriaSerif')),
          ),
        ),
      ]),
      backgroundColor: Color.fromRGBO(235, 236, 234, 1),
    );
  }
}

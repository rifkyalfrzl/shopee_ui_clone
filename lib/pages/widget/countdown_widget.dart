import 'dart:async';

import 'package:flutter/material.dart';

class CountdownWidget extends StatefulWidget {
  const CountdownWidget({super.key});

  @override
  State<CountdownWidget> createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  Duration endTimer = const Duration(hours: 1);
  Timer? timer;

  @override
  void initState(){
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        endTimer -= const Duration(seconds: 1);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                        color: Colors.black,
                        ),
                        child: Center(child: Text(_doubleDigitParser(endTimer.inHours), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left:5.0),
                        child: Text(":", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                        color: Colors.black,
                        ),
                        child: Center(child: Text(_doubleDigitParser(endTimer.inMinutes % 60), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left:5.0),
                        child: Text(":", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                        color: Colors.black,
                        ),
                        child: Center(child: Text(_doubleDigitParser(endTimer.inSeconds % 60), style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                      ),
      ],
    );
  }
  String _doubleDigitParser(int digit) {
    if (digit < 10) {
      return "0$digit";
    } else {
      return "$digit";
    }
  }
}
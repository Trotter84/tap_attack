import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(TapFight());
}

class TapFight extends StatefulWidget {
  const TapFight({Key? key}) : super(key: key);

  @override
  _TapFightState createState() => _TapFightState();
}

class _TapFightState extends State<TapFight> {

  Duration timeout = Duration(seconds: 3);
  Duration ms = Duration(milliseconds: 1);

  void startTimeout([int? milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    Timer.periodic(duration, tic);
  }

  void tic(Timer timer) {  // callback function
    print('working'); // when 0 stop timer
  }

  int playerOneCount = 0;
  int playerTwoCount = 0;

  void buttonOneCounter() {
    setState(() {
      playerOneCount++;
    });
  }

  void buttonTwoCounter() {
    setState(() {
      playerTwoCount++;
    });
  }

  void buttonReset() {
    setState(() {
      playerOneCount = 0;
      playerTwoCount = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber.shade900,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TextButton(
                    onPressed: () {
                      buttonTwoCounter();
                      print('Button 2 count $playerTwoCount');
                    },
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(180 / 360),
                      child: Text(
                        "Player 2",
                        style: TextStyle(
                          fontSize: 45.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: RotationTransition(
                      turns: AlwaysStoppedAnimation(180 / 360),
                      child: Text(
                        '$playerTwoCount',
                        style: TextStyle(
                          fontSize: 75.0,
                          color: (playerTwoCount > playerOneCount) ? Colors.green : (playerTwoCount < playerOneCount) ? Colors.red : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50.0,
                width: 100.0,
                color: Colors.white,
                child: TextButton(
                  onPressed: () {
                    startTimeout();
                    print('RESET');
                    print('Counters set to 0');
                  },
                  child: Text(
                    'RESET',
                    style: TextStyle(
                      fontSize: 23.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      '$playerOneCount',
                      style: TextStyle(
                        fontSize: 75.0,
                        color: (playerOneCount > playerTwoCount) ? Colors.green : (playerOneCount < playerTwoCount) ? Colors.red : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: TextButton(
                    onPressed: () {
                      buttonOneCounter();
                      print('Button 1 count $playerOneCount');
                    },
                    child: Text(
                      "Player 1",
                      style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

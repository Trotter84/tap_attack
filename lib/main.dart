import 'package:flutter/material.dart';

void main() {
  runApp(TapFight());
}

class TapFight extends StatelessWidget {
  const TapFight({Key? key}) : super(key: key);

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
                      print('Button 2 Registered');
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
                      print('Button 1 Registered');
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

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {print('Button Registered');}, child: Text('Hello'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

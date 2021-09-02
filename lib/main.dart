import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CoinPage(),
  ));
}

class CoinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Flip'),
          backgroundColor: Colors.black,
        ),
        body: Coin(),
      ),
    );
  }
}

class Coin extends StatefulWidget {
  @override
  _CoinState createState() => _CoinState();
}

class _CoinState extends State<Coin> {
  int coinValue = 0;
  void flipCoin() {
    coinValue = Random().nextInt(2) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                'Flip the Coin...!',
                style: TextStyle(
                  fontSize: 60.0,
                  fontFamily: 'Indie Flower',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: Image.asset('images/coin$coinValue.png'),
            ),
            Expanded(
              flex: 3,
              child: TextButton(
                child: Image.asset('images/flip.png'),
                onPressed: () {
                  setState(() {
                    flipCoin();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

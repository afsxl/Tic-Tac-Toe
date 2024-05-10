import 'package:flutter/material.dart';
import 'package:lolxn_tic_tac_toe/home.dart';

void main() async {
  runApp(
    const TicTacToe(),
  );
}

class TicTacToe extends StatelessWidget {
  const TicTacToe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

import 'package:flutter/material.dart';

class Cpu extends StatefulWidget {
  const Cpu({super.key});

  @override
  State<Cpu> createState() => _CpuState();
}

class _CpuState extends State<Cpu> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 41, 51),
      body: Center(
        child: Text(
          "Coming Soon",
          style: TextStyle(
            color: Color.fromARGB(255, 0, 203, 192),
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}

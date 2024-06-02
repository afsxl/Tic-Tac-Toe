import 'package:flutter/material.dart';
import 'package:lolxn_tic_tac_toe/Cpu/cpu.dart';
import 'package:lolxn_tic_tac_toe/Player/player.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 41, 51),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "X",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 203, 192),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "O",
                    style: TextStyle(
                      color: Color.fromARGB(255, 250, 182, 35),
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 250, 182, 35),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Cpu();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Play (vs CPU)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 203, 192),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return const Player();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Play (vs Player)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
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

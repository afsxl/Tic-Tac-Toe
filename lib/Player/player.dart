import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  const Player({
    super.key,
  });

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  List<List<String>> box = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];
  int playerX = 0;
  int playerO = 0;
  int tie = 0;
  int count = 0;
  bool turn = true;
  bool gameOver = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 41, 51),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Text(
                      "X",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 203, 192),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "O",
                      style: TextStyle(
                        color: Color.fromARGB(255, 250, 182, 35),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 25, 54, 66),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 7,
                  ),
                  child: Text(
                    turn ? "X Turn" : "O Turn",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 163, 191, 202),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 163, 191, 202),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.refresh,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (ctx) {
                          return Center(
                            child: Container(
                              height: MediaQuery.of(context).size.height / 4,
                              width: MediaQuery.of(context).size.height / 3,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 25, 54, 66),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    "Restart Or Reset ?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 0, 203, 192),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            if (mounted) {
                                              setState(
                                                () {
                                                  box = [
                                                    ['', '', ''],
                                                    ['', '', ''],
                                                    ['', '', ''],
                                                  ];
                                                  count = 0;
                                                  turn = true;
                                                  playerX = 0;
                                                  playerO = 0;
                                                  tie = 0;
                                                },
                                              );
                                            }
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            "Reset Score",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                3.5,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 250, 182, 35),
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            if (mounted) {
                                              setState(
                                                () {
                                                  box = [
                                                    ['', '', ''],
                                                    ['', '', ''],
                                                    ['', '', ''],
                                                  ];
                                                  count = 0;
                                                  turn = true;
                                                },
                                              );
                                            }
                                            Navigator.pop(context);
                                          },
                                          child: const Text(
                                            "Restart Round",
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 163, 191, 202),
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            for (int i = 0; i < 3; i++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int j = 0; j < 3; j++)
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          height: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 25, 54, 66),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              played(i, j);
                            },
                            child: Text(
                              box[i][j],
                              style: TextStyle(
                                color: box[i][j] == "X"
                                    ? const Color.fromARGB(255, 0, 203, 192)
                                    : const Color.fromARGB(255, 250, 182, 35),
                                fontSize: 40,
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.width -
                            (MediaQuery.of(context).size.width / 4) * 3 -
                            80) /
                        2,
                  ),
                ],
              ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 203, 192),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "X",
                        ),
                        Text(
                          playerX.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (MediaQuery.of(context).size.width / 4) * 3 -
                          80) /
                      2,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 163, 191, 202),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Tie",
                        ),
                        Text(
                          tie.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width -
                          (MediaQuery.of(context).size.width / 4) * 3 -
                          80) /
                      2,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 250, 182, 35),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "O",
                        ),
                        Text(
                          playerO.toString(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void played(int i, int j) {
    if (!gameOver) {
      if (mounted) {
        setState(
          () {
            if (box[i][j] == '') {
              if (turn) {
                box[i][j] = 'X';
              } else {
                box[i][j] = 'O';
              }
              turn = !turn;
              count++;
              if (count >= 5) {
                checkWin(i, j);
              }
            }
          },
        );
      }
    }
  }

  void checkWin(int i, int j) {
    if (box[i][0] == box[i][1] && box[i][1] == box[i][2]) {
      if (box[i][0] == 'X') {
        gameOver = true;
        playerX++;
        showResult("X Won");
      } else {
        gameOver = true;
        playerO++;
        showResult("O Won");
      }
    } else if (box[0][j] == box[1][j] && box[1][j] == box[2][j]) {
      if (box[1][j] == 'X') {
        gameOver = true;
        playerX++;
        showResult("X Won");
      } else {
        gameOver = true;
        playerO++;
        showResult("O Won");
      }
    } else if (box[0][0] == box[1][1] && box[1][1] == box[2][2]) {
      if (box[1][1] == "X") {
        gameOver = true;
        playerX++;
        showResult("X Won");
      } else {
        gameOver = true;
        playerO++;
        showResult("O Won");
      }
    } else if (box[0][2] == box[1][1] && box[1][1] == box[2][0]) {
      if (box[1][1] == "X") {
        gameOver = true;
        playerX++;
        showResult("X Won");
      } else {
        gameOver = true;
        playerO++;
        showResult("O Won");
      }
    } else if (count == 9) {
      gameOver = true;
      tie++;
      showResult("Tie");
    }
  }

  void showResult(String message) async {
    Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
      () {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (ctx) {
            return Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 54, 66),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      message,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.normal,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 182, 35),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).popUntil(
                                (route) => route.isFirst,
                              );
                            },
                            child: const Text(
                              "Quit",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 250, 182, 35),
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: TextButton(
                            onPressed: () {
                              if (mounted) {
                                setState(
                                  () {
                                    gameOver = false;
                                    box = [
                                      ['', '', ''],
                                      ['', '', ''],
                                      ['', '', ''],
                                    ];
                                    count = 0;
                                    if (message == "X Won") {
                                      turn = true;
                                    } else if (message == "O Won") {
                                      turn = false;
                                    } else {
                                      turn = !turn;
                                    }
                                  },
                                );
                              }
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Next Round",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

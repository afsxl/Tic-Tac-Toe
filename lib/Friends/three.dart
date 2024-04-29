import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  const Three({
    super.key,
  });

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  List<List<String>> box = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];
  int playerX = 0;
  int playerO = 0;
  bool turn = true;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                height: 50,
                decoration: BoxDecoration(
                  color: turn ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Player X",
                    style: TextStyle(
                      color: turn ? Colors.black : Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3 - 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    50,
                  ),
                ),
                child: Center(
                  child: Text(
                    "$playerX  -  $playerO",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 3 - 20,
                height: 50,
                decoration: BoxDecoration(
                  color: turn ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                ),
                child: Center(
                  child: Text(
                    "Player O",
                    style: TextStyle(
                      color: turn ? Colors.white : Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          for (int i = 0; i < 3; i++)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int j = 0; j < 3; j++)
                  Container(
                    width: MediaQuery.of(context).size.width / 3 - 50,
                    height: MediaQuery.of(context).size.width / 3 - 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        played(i, j);
                      },
                      child: Text(
                        box[i][j],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                        ),
                      ),
                    ),
                  )
              ],
            )
        ],
      ),
    );
  }

  void played(int i, int j) {
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

  void checkWin(int i, int j) {
    if (box[i][0] == box[i][1] && box[i][1] == box[i][2]) {
      if (box[i][0] == 'X') {
        playerX += 1;
        showMessage("Player X Wins");
      } else {
        playerO += 1;
        showMessage("Player O Wins");
      }
    } else if (box[0][j] == box[1][j] && box[1][j] == box[2][j]) {
      if (box[1][j] == 'X') {
        playerX += 1;
        showMessage("Player X Wins");
      } else {
        playerO += 1;
        showMessage("Player O Wins");
      }
    } else if (box[0][0] == box[1][1] && box[1][1] == box[2][2]) {
      if (box[1][1] == "X") {
        playerX += 1;
        showMessage("Player X Wins");
      } else {
        playerO += 1;
        showMessage("Player O Wins");
      }
    } else if (box[0][2] == box[1][1] && box[1][1] == box[2][0]) {
      if (box[1][1] == "X") {
        playerX += 1;
        showMessage("Player X Wins");
      } else {
        playerO += 1;
        showMessage("Player O Wins");
      }
    } else if (count == 9) {
      showMessage("Draw");
    }
  }

  void showMessage(String message) async {
    box = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
    count = 0;
    turn = !turn;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
              borderRadius: BorderRadius.circular(
                20,
              ),
              border: Border.all(
                color: Colors.white,
                width: 1,
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
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "New Game",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50),
                            padding: const EdgeInsets.all(8)),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    thickness: 1,
                    indent: 50,
                    endIndent: 50,
                    color: Colors.grey,
                  ),
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 200,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: const EdgeInsets.all(8),
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          teamBpoints++;
                          setState(() {
                            teamBpoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(150, 50)),
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoints = 0;
                  teamBpoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.all(8),
                minimumSize: const Size(150, 50),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

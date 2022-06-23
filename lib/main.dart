import 'dart:math';

import "package:flutter/material.dart";

// Run and start our app
void main() {
  runApp(const MyApp());
}

// Setup a MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "a counter",
      home: MyCounter(),
    );
  }
}

// Don't worry about this too much, just know that we need it
class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

// This is our actual app!
class _MyCounterState extends State<MyCounter> {
  // This variable stores the current count (always starting at 0)
  int goals = 0;

  // This function increases our counter by 1
  void incrementAdd() {
    setState(() {
      goals++;
    });
  }

  void incrementSub() {
    setState(() {
      goals--;
    });
  }

  void Add50() {
    setState(() {
      goals += 50;
    });
  }

  void Sub50() {
    setState(() {
      goals -= 50;
    });
  }

  void incrementChaos() {
    setState(() {
      goals -= Random().nextInt(100000) - 50000;
    });
  }

  void reset() {
    setState(() {
      goals = 0;
    });
  }

  // This function makes things appear on screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $goals",
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: incrementAdd,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 161, 196, 139))),
                  child: Text("+1"),
                ),
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: incrementSub,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 114, 140, 98))),
                  child: Text("-1"),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: Add50,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 193, 173, 217),
                    ),
                    overlayColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 101, 70, 117),
                    ),
                  ),
                  child: Text("+50"),
                ),
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: Sub50,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 134, 120, 150),
                    ),
                    overlayColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 49, 3, 74),
                    ),
                  ),
                  child: Text("-50"),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: incrementChaos,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 209, 157, 168)),
                overlayColor: MaterialStateProperty.all(
                  Color.fromARGB(255, 135, 0, 29),
                ),
              ),
              child: Text("Chaos"),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: reset,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 0, 0, 0))),
                  child: Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

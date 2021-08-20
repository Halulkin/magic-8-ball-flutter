import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: BallPage()),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        getAnswer();
      },
      child: Container(
        child: Center(
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }

  void getAnswer() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }
}

// void main() {
//   return runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.red,
//         appBar: AppBar(
//           title: Text('Dicee'),
//           backgroundColor: Colors.red,
//         ),
//         body: DicePage(),
//       ),
//     ),
//   );
// }
//
// class DicePage extends StatefulWidget {
//   const DicePage({Key? key}) : super(key: key);
//
//   @override
//   _DicePageState createState() => _DicePageState();
// }
//
// class _DicePageState extends State<DicePage> {
//   var leftDiceNumber = 3;
//   var rightDiceNumber = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(children: [
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextButton(
//               onPressed: () {
//                 changeDiceNumber();
//               },
//               child: Image.asset('images/dice$leftDiceNumber.png'),
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextButton(
//               onPressed: () {
//                 changeDiceNumber();
//               },
//               child: Image.asset('images/dice$rightDiceNumber.png'),
//             ),
//           ),
//         ),
//       ]),
//     );
//   }
//
//   changeDiceNumber() {
//     setState(() {
//       rightDiceNumber = Random().nextInt(6) + 1;
//       leftDiceNumber = Random().nextInt(6) + 1;
//     });
//   }
// }

import 'package:flutter/material.dart';

class FocusedPower extends StatefulWidget {
  const FocusedPower({super.key});

  @override
  State<FocusedPower> createState() => _FocusedPowerState();
}

class _FocusedPowerState extends State<FocusedPower> {
  var i;
  double numberPosition = 1;

  @override
  void initState() {
    super.initState();
    dipesh();
  }

  @override
  Widget build(BuildContext context) {
    //dipesh();
    return Scaffold(
        appBar: AppBar(title: Text("just chill")),
        body: Container(
            //color: Theme.of(context).primaryColor,
            child: Stack(children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 2000),
            curve: Curves.linear,
            top: 5 * numberPosition,
            left: 5,
            child: Center(
              child: Row(children: [
                Text("6"),
                Text(
                  "8",
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ]

                  // targetNumber.toString(),
                  //style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("parrot"), Text("pigeon")],
            ),
          ),
          //Text("dieodjdjnjn"),
        ])));
  }

  void dipesh() {
    //numberPosition = numberPosition + 0.5;
    print("im in dipesh");
    for (i = 0; i < 10; i++) {
      setState(() {
        numberPosition = numberPosition + 10;
      });
    }
  }
}

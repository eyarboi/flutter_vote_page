import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
        Scaffold(
          backgroundColor: Colors.orangeAccent,
          body: Center(
            child:
            Text.rich(
                TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'You Voted!',
                      style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white)
                  ),
                ])
            ),
          )

        )

    );
  }


}



import 'package:flutter/material.dart';

import 'header.dart';
import 'information.dart';
import 'who_we_are.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade900,
            ),
            Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: const [
                Header(),
                Information(),
                WhoWeAre(),
               ], 
            ),
          ],
        ),
      ),
    );
  }
}

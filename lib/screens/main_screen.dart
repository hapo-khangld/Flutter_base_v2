import 'package:flutter/material.dart';

import '../resources/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.red,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextButton(onPressed: () {}, child: Text('adasd')),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: Text('adasd'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
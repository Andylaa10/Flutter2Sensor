import 'package:flutter/material.dart';

class PedometerApp extends StatelessWidget {
  const PedometerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Steps taken:',
              style: TextStyle(fontSize: 30),
            ),
            const Text(
              'Steps',
              style: TextStyle(fontSize: 40),
            ),
            Divider(
              height: 100,
              thickness: 0,
              color: Theme.of(context).primaryColor,
            ),
            const Text(
              'Pedestrian status:',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Walking',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}

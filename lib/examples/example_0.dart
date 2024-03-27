import 'package:flutter/material.dart';

class Example0 extends StatelessWidget {
  const Example0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Text App Bar'),
          backgroundColor: Colors.yellow,
          actions: [
            IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.add_a_photo),
              onPressed: () {},
            ),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Text(
                'Hello',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ],
        ));
  }
}

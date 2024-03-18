import 'package:flutter/material.dart';

class Example0 extends StatelessWidget {
  const Example0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          backgroundColor: Colors.blue,
        ),
        body: ColoredBox(
          color: Colors.yellowAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 50,
                width: 50,
                child: ColoredBox(
                  color: Colors.black54,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: 100,
                width: 100,
                color: Colors.black54,
                child: const ColoredBox(
                  color: Colors.blue,
                ),
              ),
              const Text(
                'Hello World!',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ));
  }
}

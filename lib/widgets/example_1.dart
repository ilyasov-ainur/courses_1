import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 500,
            width: 200,
            color: Colors.grey,
            alignment: Alignment.center,
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '30 sec',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 20),
                _TrafficLightCircle(
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                _TrafficLightCircle(
                  color: Colors.yellow,
                ),
                SizedBox(height: 20),
                _TrafficLightCircle(
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ));
  }
}

class _TrafficLightCircle extends StatelessWidget {
  final Color color;
  const _TrafficLightCircle({
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

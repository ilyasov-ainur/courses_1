import 'dart:developer';

import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: _TraficLight(),
        ));
  }
}

class _TraficLight extends StatefulWidget {
  _TraficLight() {
    log('TraficLight init 🚦');
  }

  @override
  State<_TraficLight> createState() => _TraficLightState();
}

class _TraficLightState extends State<_TraficLight> {
  int _timer = 30;

  @override
  Widget build(BuildContext context) {
    log('TraficLight build 🚦');

    return Container(
      height: 500,
      width: 200,
      color: Colors.grey,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _TimerText(
            timer: _timer,
          ),
          const SizedBox(height: 20),
          _TrafficLightCircle(
            color: Colors.red,
          ),
          const SizedBox(height: 20),
          _TrafficLightCircle(
            color: Colors.yellow,
          ),
          const SizedBox(height: 20),
          _TrafficLightCircle(
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _decrement,
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }

  void _decrement() {
    setState(() {
      _timer -= 1;
      log('------------------');
    });
  }
}

class _TimerText extends StatelessWidget {
  _TimerText({
    required this.timer,
  }) {
    log('TimerText init ⏱️');
  }
  final int timer;
  @override
  Widget build(BuildContext context) {
    log('TimerText build ⏱️');

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.timer),
        Text(
          '$timer sec',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class _TrafficLightCircle extends StatelessWidget {
  final Color color;
  _TrafficLightCircle({
    required this.color,
  }) {
    log('TrafficLightCircle init $_emoji');
  }

  @override
  Widget build(BuildContext context) {
    log('TrafficLightCircle build $_emoji');

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

  String get _emoji => switch (color) {
        Colors.red => '🔴',
        Colors.yellow => '🟡',
        Colors.green => '🟢',
        _ => '❓',
      };
}

import 'dart:developer';

import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

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

class _TraficLight extends StatelessWidget {
  _TraficLight() {
    log('TraficLight init 🚦');
  }

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
          _TimerText(),
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
        ],
      ),
    );
  }
}

class _TimerText extends StatelessWidget {
  _TimerText() {
    log('TimerText init ⏱️');
  }

  @override
  Widget build(BuildContext context) {
    log('TimerText build ⏱️');

    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.timer),
        Text(
          '30 sec',
          style: TextStyle(
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

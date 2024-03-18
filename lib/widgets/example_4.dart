import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

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
  Color? color;
  bool isCircleShape = true;
  int horeloadCounter = 0;

  @override
  void reassemble() {
    setState(() {
      horeloadCounter += 1;
    });
    super.reassemble();
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
          Text('Hot Reload Counter: $horeloadCounter'),
          isCircleShape
              ? _TrafficLightCircle(
                  color: color,
                )
              : _TraficLightSquare(
                  color: color,
                ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _changeColor,
            child: const Icon(Icons.remove),
          ),
          ElevatedButton(
            onPressed: _changeShape,
            child: const Icon(Icons.refresh),
          )
        ],
      ),
    );
  }

  void _changeColor() {
    setState(() {
      color = generateColor();
    });
    log('------------------');
  }

  void _changeShape() {
    setState(() {
      isCircleShape = !isCircleShape;
    });
    log('------------------');
  }
}

class _TraficLightSquare extends StatefulWidget {
  final Color? color;
  _TraficLightSquare({
    required this.color,
  });

  @override
  State<_TraficLightSquare> createState() => _TraficLightSquareState();
}

class _TraficLightSquareState extends State<_TraficLightSquare> {
  late Color color;
  @override
  void initState() {
    log('_TraficLightSquare init $_emoji');
    color = widget.color ?? Colors.yellow;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _TraficLightSquare oldWidget) {
    log('_TraficLightSquare update $_emoji');
    color = widget.color!;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    log('_TraficLightSquare ChangeDependencies $_emoji');

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    log('_TraficLightSquare dispose $_emoji');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('_TraficLightSquare build $_emoji');

    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color,
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    return setState(() {
      color = generateColor();
    });
  }

  String get _emoji => '⬛';
}

class _TrafficLightCircle extends StatefulWidget {
  final Color? color;
  _TrafficLightCircle({
    required this.color,
  });

  @override
  State<_TrafficLightCircle> createState() => _TrafficLightCircleState();
}

class _TrafficLightCircleState extends State<_TrafficLightCircle> {
  late Color color;
  @override
  void initState() {
    log('TrafficLightCircle init $_emoji');
    color = widget.color ?? Colors.yellow;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _TrafficLightCircle oldWidget) {
    log('TrafficLightCircle update $_emoji');
    if (widget.color != null) {
      color = widget.color!;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    log('TrafficLightCircle ChangeDependencies $_emoji');

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    log('TrafficLightCircle dispose $_emoji');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('TrafficLightCircle build $_emoji');

    return GestureDetector(
      onTap: _changeColor,
      child: Container(
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
      ),
    );
  }

  void _changeColor() {
    return setState(() {
      color = generateColor();
    });
  }

  String get _emoji => '⚪';
}

Color generateColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
}

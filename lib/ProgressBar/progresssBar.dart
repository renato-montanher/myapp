import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PogressBarExample());


class PogressBarExample extends StatefulWidget {
  const PogressBarExample({super.key});

  @override
  State<PogressBarExample> createState() => _PogressBarExampleState();
}


class _PogressBarExampleState extends State<PogressBarExample> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "teste",
      home: Scaffold(
        appBar: AppBar(title: const Text("Teste Renato")),
        body:DashedCircularProgressBar.aspectRatio(
          aspectRatio: 1, // width ÷ height
          valueNotifier: _valueNotifier,
          progress: 90,
          maxProgress: 200,
          corners: StrokeCap.butt,
          foregroundColor: const Color.fromARGB(255, 243, 33, 33),
          backgroundColor: const Color(0xffeeeeee),
          foregroundStrokeWidth: 36,
          backgroundStrokeWidth: 36,
          animation: true,
          child: Center(
            child: ValueListenableBuilder(
              valueListenable: _valueNotifier,
              builder: (_, double value, __) => Text(
                '${value.toInt()}%',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 60
                ),
              ),
            ),
          ),
        ) ,
      ),
    );
  }
  }
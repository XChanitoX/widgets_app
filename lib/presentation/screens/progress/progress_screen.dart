import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Column(
      children: [
        SizedBox(height: 30),
        Text('Circular progress indicator'),
        SizedBox(height: 10),
        CircularProgressIndicator(
            strokeWidth: 2, backgroundColor: Colors.black45),
        SizedBox(height: 20),
        Text('Circular y Linear progress indicators controlados'),
        SizedBox(height: 10),
        _ControlledProgressIndicator(),
      ],
    ));
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    // El stream builder al ser builder se crea en tiempo de ejecución
    return StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100; //0.0, 1.0
          // takeWhile: Que se ejecute mientras ... y luego se cancele el Listener al Stream
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    strokeWidth: 2,
                    backgroundColor: Colors.black12,
                    value: progressValue,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.black45,
                      value: progressValue,
                    ),
                  ),
                ],
              ));
        });
  }
}

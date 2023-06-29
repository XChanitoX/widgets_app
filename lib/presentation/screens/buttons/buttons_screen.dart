import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  // Se define como static para que pueda ser accedido desde cualquier lugar como el router
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const Placeholder(),
    );
  }
}

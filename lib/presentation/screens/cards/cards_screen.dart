import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  // Se define como static para que pueda ser accedido desde cualquier lugar como el router
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const Placeholder(),
    );
  }
}

import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome noobs"), ),
      body: Stack(
        children: [
          Positioned.fill(child: Opacity(opacity: 0.5, child: Image.asset("assets/IntroImage.jpg", fit: BoxFit.cover,))),
          const Center(
          child: Text("Welcome to the world of Flutter!", style: TextStyle(fontSize: 20)),
        )],
      ),
    );
  }
}
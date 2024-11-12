import 'package:flutter/material.dart';
import 'package:snapscore_fluttermigration/screens/settings_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Opacity(opacity: 0.5, child: Image.asset("assets/IntroImage.jpg", fit: BoxFit.cover,))),
          const Align(
            alignment: Alignment(0, -0.5),
            child: Text("Welcome to SnapScore", style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
              shadows: [Shadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(5, 5)
              )]),),
          ),
          Align(
            alignment: const Alignment(0, 0.5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SettingsScreen())
                );
              },
              child: const Text("Get Started"),
              
                    ),
          )],
      ),
    );
  }
}
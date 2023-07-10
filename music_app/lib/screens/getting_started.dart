import 'package:flutter/material.dart';
import 'package:music_app/screens/podkas_main_screen.dart';
import 'package:music_app/widgets/getting_started_widgets/getting_started_image.dart';
import 'package:music_app/widgets/getting_started_widgets/getting_started_texts.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1D2B),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PodkasMainScreen(),
              ),
            );
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.arrow_forward_rounded,
            color: Color(0xFF525298),
            size: 30,
          ),
        ),
      ),
      body: const Column(
        children: [
          GettingStartedImage(),
          GettingStartedTexts(),
        ],
      ),
    );
  }
}

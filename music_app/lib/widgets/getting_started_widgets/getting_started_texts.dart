import 'package:flutter/material.dart';

class GettingStartedTexts extends StatelessWidget {
  const GettingStartedTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Text(
              "Podkes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 30,
              ),
              child: Text(
                "A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.",
                style: TextStyle(
                  color: Color(0xffC4C4C4),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

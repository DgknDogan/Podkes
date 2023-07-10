import 'package:flutter/material.dart';

class GettingStartedImage extends StatelessWidget {
  const GettingStartedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 75),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
            child: Image.asset(
              "assets/good-faces.png",
              alignment: Alignment.bottomCenter,
              fit: BoxFit.fill,
              scale: 1,
            ),
          ),
        ),
      ),
    );
  }
}

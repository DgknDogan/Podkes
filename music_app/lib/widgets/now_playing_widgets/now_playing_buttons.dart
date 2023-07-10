import 'package:flutter/material.dart';

class NowPlayingButtons extends StatelessWidget {
  const NowPlayingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            color: Colors.white,
            iconSize: 30,
            icon: const Icon(Icons.skip_previous_rounded),
          ),
          Container(
            decoration: const ShapeDecoration(
              shape: OvalBorder(),
              color: Color(0xff2F3142),
            ),
            child: IconButton(
              onPressed: () {},
              color: Colors.white,
              iconSize: 40,
              icon: const Icon(Icons.play_arrow_rounded),
            ),
          ),
          IconButton(
            onPressed: () {},
            color: Colors.white,
            iconSize: 30,
            icon: const Icon(Icons.skip_next_rounded),
          ),
        ],
      ),
    );
  }
}

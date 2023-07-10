import 'package:flutter/material.dart';

class NowPlayingSlider extends StatefulWidget {
  const NowPlayingSlider({super.key});

  @override
  State<NowPlayingSlider> createState() => _NowPlayingSliderState();
}

class _NowPlayingSliderState extends State<NowPlayingSlider> {
  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 00.00;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Slider(
                max: 10.00,
                activeColor: Colors.white,
                value: currentSliderValue,
                label: currentSliderValue.toString(),
                thumbColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    currentSliderValue = value;
                  });
                },
              );
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              StatefulBuilder(
                builder: (context, setState) {
                  return Text(
                    currentSliderValue.toStringAsFixed(2),
                    style: const TextStyle(color: Colors.white),
                  );
                },
              ),
              const Text(
                "10.00",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}

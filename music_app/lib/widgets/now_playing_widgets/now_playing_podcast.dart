import 'package:flutter/material.dart';

class NowPlayingPodcast extends StatelessWidget {
  final String author;
  final String title;
  final String imageUrl;
  const NowPlayingPodcast(
      {super.key,
      required this.author,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            width: width,
            constraints: const BoxConstraints(maxWidth: 425 - 100,minWidth: 320-100),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  author,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xffCCCCCC),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

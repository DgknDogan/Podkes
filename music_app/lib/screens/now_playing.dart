import 'package:flutter/material.dart';
import 'package:music_app/widgets/now_playing_widgets/now_playing_buttons.dart';
import 'package:music_app/widgets/now_playing_widgets/now_playing_podcast.dart';
import 'package:music_app/widgets/now_playing_widgets/now_playing_slider.dart';

class NowPlayingScreen extends StatelessWidget {
  final String author;
  final String title;
  final String imageUrl;
  const NowPlayingScreen(
      {super.key,
      required this.author,
      required this.title,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1D2B),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: const Color(0xff1F1D2B),
        title: Center(
          child: Container(
            margin: const EdgeInsets.only(right: 60),
            child: const Text(
              "Now Playing",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inter',
              ),
            ),
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.only(left: 40),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 8,
            child: NowPlayingPodcast(
                author: author, title: title, imageUrl: imageUrl),
          ),
          const Expanded(
            flex: 2,
            child: NowPlayingSlider(),
          ),
          const Expanded(
            flex: 2,
            child: NowPlayingButtons(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../screens/now_playing.dart';
import '../../../data/constants/constants.dart';

class PodcastGrid extends StatelessWidget {
  const PodcastGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: screenWidth/650,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: [
        ...podcastList.map((podcast) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NowPlayingScreen(
                      author: podcast.author,
                      title: podcast.title,
                      imageUrl: "assets/${podcast.imageUrl}"),
                ),
              );
            },
            child: Column(
              
              children: [
                Image.asset("assets/${podcast.imageUrl}"),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(podcast.title,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                      Text(podcast.author,style: const TextStyle(color: Color(0xffCCCCCC),)),
                    ],
                  ),
                )
              ],
            ),
          );
        }).toList()
      ],
    );
  }
}

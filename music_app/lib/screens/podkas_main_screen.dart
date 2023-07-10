import 'package:flutter/material.dart';

import 'package:music_app/widgets/podkas_main_screen_widgets/nav_bar/navbar.dart';
import 'package:music_app/widgets/podkas_main_screen_widgets/podcasts/podcast_grid.dart';
import 'package:music_app/widgets/podkas_main_screen_widgets/search/search_bar.dart';
import 'package:music_app/widgets/podkas_main_screen_widgets/search/search_tab.dart';

class PodkasMainScreen extends StatelessWidget {
  const PodkasMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(
        backgroundColor: const Color(0xff252836),
        children: [
          Builder(
            builder: (context) {
              return IconButton(
                color: Colors.white,
                alignment: Alignment.topLeft,
                onPressed: () {
                  Scaffold.of(context).closeDrawer();
                },
                icon: const Icon(Icons.close_rounded),
              );
            },
          ),
        ],
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return Container(
              margin: const EdgeInsets.only(left: 30),
              child: IconButton(
                  iconSize: 25,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  color: const Color(0xffF9F9FA),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            );
          },
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: IconButton(
              iconSize: 20,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              
              onPressed: () {},
              icon: const Icon(Icons.notifications),
              color: const Color(0xffF9F9FA),
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.white),
        toolbarHeight: 60,
        title: const Center(
          child: Text(
            "Podkes",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
        ),
        backgroundColor: const Color(0xFF1F1D2B),
      ),
      bottomNavigationBar: const MyNavBar(),
      backgroundColor: const Color(0xFF1F1D2B),
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: PkSearchBar(),
            ),
            const Expanded(
              flex: 1,
              child: PkSearchTab(),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text(
                    "Trending",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            const Expanded(
              flex: 7,
              child: PodcastGrid(),
            ),
          ],
        ),
      ),
    );
  }
}

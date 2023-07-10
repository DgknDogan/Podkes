import 'package:flutter/material.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 100,
          child: BottomNavigationBar(
            unselectedItemColor: const Color(0xff979797),
            selectedItemColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                label: "Discover",
                icon: Icon(Icons.home_rounded),
              ),
              BottomNavigationBarItem(
                label: "Library",
                icon: Icon(Icons.video_library_rounded),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.person_rounded),
              )
            ],
            backgroundColor: const Color(0xff252836),
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        );
  }
}
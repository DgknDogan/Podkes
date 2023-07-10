import 'package:flutter/material.dart';

class PkSearchBar extends StatelessWidget {
  const PkSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: SearchBar(
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
        backgroundColor: const MaterialStatePropertyAll(Color(0xff252836)),
        constraints: const BoxConstraints(maxWidth: double.infinity),
        hintText: "Search",
        elevation: const MaterialStatePropertyAll(1),
        hintStyle: const MaterialStatePropertyAll(
          TextStyle(
            color: Color.fromARGB(80, 255, 255, 255),
            fontWeight: FontWeight.w300,
            fontSize: 14,
            
          ),
        ),
        trailing: const [
          Padding(
            padding: EdgeInsets.only(right: 2.5),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Color.fromARGB(80, 255, 255, 255),
            ),
          ),
        ],
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

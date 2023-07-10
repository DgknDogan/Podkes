import 'package:flutter/material.dart';

import '../../../data/enums/enums.dart';

class PkSearchTab extends StatefulWidget {
  const PkSearchTab({super.key});

  @override
  State<PkSearchTab> createState() => _PkSearchTabState();
}

class _PkSearchTabState extends State<PkSearchTab>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final int _length = 4;
  @override
  void initState() {
    _tabController = TabController(length: _length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(25, 10, 0, 0),
          child: TabBar(
            labelPadding:
                const EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
            isScrollable: true,
            labelColor: const Color(0xffF9F9FA),
            unselectedLabelColor: const Color(0xffC4C4C4),
            dividerColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            controller: _tabController,
            tabs: [
              ...Categories.values.map((item) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 7.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xff2F3142),
                  ),
                  child: Text(
                    "${item.name[0].toUpperCase()}${item.name.substring(1).toLowerCase()}",
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                );
              }).toList()
            ],
          ),
        ),
      ],
    );
  }
}

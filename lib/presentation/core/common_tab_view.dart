import 'package:flutter/material.dart';

import '../presentation.dart';
import 'constants.dart';

class TabView extends StatefulWidget {
  final List<Widget> _pages = [
    NotesOverViewPage(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.home,
      Icons.dynamic_feed,
      Icons.share,
      Icons.account_circle
    ];

    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: klighterPinkColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,
        color: klightPinkColor,
        notchMargin: 6.0,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: height * 0.07,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(icons.length, (index) {
                return buildTabIcon(
                  icon: icons[index],
                  onTap: () {
                    _selectPage(index);
                  },
                  color: _selectedPageIndex == index
                      ? kpurpleColor
                      : Colors.black26,
                );
              })),
        ),
      ),
      body: SafeArea(child: widget._pages[_selectedPageIndex]),
    );
  }
}

IconButton buildTabIcon(
    {required VoidCallback onTap,
    required IconData icon,
    required Color color}) {
  return IconButton(
    iconSize: 30,
    color: color,
    icon: Icon(icon),
    onPressed: onTap,
  );
}

import 'package:flutter/material.dart';

import '../presentation.dart';
import 'constants.dart';

class TabView extends StatefulWidget {
  final List<Widget> _pages = [
    NotesOverViewPage(),
    Container(),
    Container(),
    UserProfilePage(),
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
      backgroundColor: klightPinkColor2,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
          color: kpurpleColor
        ),
        child: const Icon(
          Icons.add,
          size: 40,
          color: klightPinkColor3,
        ),
      ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 50,
        color: klightPinkColor2,
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

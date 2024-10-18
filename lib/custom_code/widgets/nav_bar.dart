// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    super.key,
    this.width,
    this.height,
    this.onTap,
  });

  final double? width;
  final double? height;
  final Future Function(int? index)? onTap;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _page = 0; // PageView index controller
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        height: 75.0,
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                color: _page == 0 ? Colors.black : Colors.white,
              ),
              label: 'Home',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.tv,
                color: _page == 1 ? Colors.black : Colors.white,
              ),
              label: 'Stream',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.article,
                color: _page == 2 ? Colors.black : Colors.white,
              ),
              label: 'News',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.play_circle,
                color: _page == 3 ? Colors.black : Colors.white,
              ),
              label: 'Program',
              labelStyle: TextStyle(color: Colors.white)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.info,
                color: _page == 4 ? Colors.black : Colors.white,
              ),
              label: 'About',
              labelStyle: TextStyle(color: Colors.white)),
        ],
        color: Color(0xFF1D1D1D), // Background Navigation Bar (dark)
        buttonBackgroundColor:
            Color(0xFFCCFF00), // Active button background color
        backgroundColor: Color(0xFF38322D), // Background behind navigation bar
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index; // Update selected page
            widget.onTap!(index);
          });
        },
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class KNavigationBar extends StatefulWidget {
  const KNavigationBar({
    super.key,
    required this.onItemTapped,
    required this.selectedIndex,
  });

  final void Function(int) onItemTapped;
  final int selectedIndex;

  @override
  State<KNavigationBar> createState() => _KNavigationBarState();
}

class _KNavigationBarState extends State<KNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CurvedNavigationBar(
        color: Color(0xff262C51),
        backgroundColor: Color(0xff48319D),
        animationDuration: Duration(milliseconds: 650),
        animationCurve: Curves.easeOutCubic,
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.location_on_outlined, size: 30, color: Colors.white),
          Icon(Icons.search, size: 30, color: Colors.white),
        ],
        onTap: widget.onItemTapped,
      ),
    );
  }
}

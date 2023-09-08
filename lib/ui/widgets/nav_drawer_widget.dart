import 'package:flutter/material.dart';
import 'package:zappy_pos/models/page_routes_enum.dart';

class NavDrawerWidget extends StatefulWidget {
  final bool isExtended;
  final PageRoutes currentPage;
  final Function(PageRoutes) onPageSelected;

  const NavDrawerWidget({super.key, required this.isExtended, required this.currentPage, required this.onPageSelected});

  @override
  State<NavDrawerWidget> createState() => _NavDrawerWidgetState();
}

class _NavDrawerWidgetState extends State<NavDrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavigationRail(
        extended: widget.isExtended,
        backgroundColor: Colors.grey.shade800,
        unselectedIconTheme:
            const IconThemeData(color: Colors.white, opacity: 1),
        unselectedLabelTextStyle: const TextStyle(
          color: Colors.white,
        ),
        selectedIconTheme: IconThemeData(color: Colors.lightBlue.shade900),
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.dashboard),
            label: Text('Dashboard'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.person),
            label: Text('Profile'),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.settings),
            label: Text('Settings'),
          ),
        ],
        selectedIndex: widget.currentPage.index,
        onDestinationSelected: (index) {
          setState(() {
            PageRoutes selectedPage = PageRoutes.values[index];
            widget.onPageSelected(selectedPage);
          });
        },)
      ],
    );
  }
}

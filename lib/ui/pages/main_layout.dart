import 'package:flutter/material.dart';
import 'package:zappy_pos/models/page_routes_enum.dart';
import 'package:zappy_pos/ui/pages/dashboard_page.dart';
import 'package:zappy_pos/ui/pages/profile_page.dart';
import 'package:zappy_pos/ui/pages/settings_page.dart';
import 'package:zappy_pos/ui/widgets/app_bar_widget.dart';
import 'package:zappy_pos/ui/widgets/nav_drawer_widget.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  MainLayoutState createState() => MainLayoutState();
}

class MainLayoutState extends State<MainLayout> {
  PageRoutes currentPage = PageRoutes.dashboard;
   bool isNavRailExtended = false;

   void _updateCurrentPage(PageRoutes page) {
    setState(() {
      currentPage = page;
    });
   }

  Widget _getCurrentPage() {
    switch (currentPage) {
      case PageRoutes.dashboard:
        return const DashboardPage();
      case PageRoutes.profile:
        return const ProfilePage();
      case PageRoutes.settings:
        return const SettingsPage();
      default:
        return const DashboardPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
          title: "Dashboard",
          isMenuExtended: isNavRailExtended,
          onMenuPressed: (value) {
            setState(() {
              isNavRailExtended = value;
            });
          },
        ),
      body: 
         Row(children: [
          NavDrawerWidget(isExtended: isNavRailExtended,currentPage: currentPage,onPageSelected: _updateCurrentPage,),
          Expanded(child: _getCurrentPage())
        ],),
    );
  }
}
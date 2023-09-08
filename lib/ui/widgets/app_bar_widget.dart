import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isMenuExtended;
  final ValueChanged<bool> onMenuPressed;

  const CustomAppBarWidget({super.key, 
    required this.title,
    this.isMenuExtended = false,
    required this.onMenuPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu,color: Colors.white,),
        onPressed: () {
          onMenuPressed(!isMenuExtended);
        },
      ),
      title: Text(title),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.settings,
          color: Colors.white,
        ),
        onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
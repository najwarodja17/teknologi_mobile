import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.theme,
    required this.style,
  });

  final ThemeData theme;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.primary,
      leading: IconButton(
        color: Colors.white,
        icon: const Icon(
          Icons.menu,
          semanticLabel: 'menu',
        ),
        onPressed: () {
          print('Menu Button');
        },
      ),
      title: Text(
        'SHRINE',
        style: style,
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
          onPressed: () {
            print('Search Button');
          },
        ),
        IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.tune,
            semanticLabel: 'fliter',
          ),
          onPressed: () {
            print('Filter button');
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

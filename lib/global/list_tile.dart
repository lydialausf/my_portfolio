import 'package:flutter/material.dart';
import 'package:my_portfolio/global/global.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      {required this.title,
      required this.subtitle,
      required this.leading,
      required this.trailing,
      this.image,
      super.key});

  final String title;
  final String subtitle;
  final Widget leading;
  final String trailing;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    final isScreenSmall = context.isScreenSmall;
    return !isScreenSmall
        ? ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            leading: leading,
            trailing: Text(trailing),
          )
        : ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image ?? Container(),
                const SizedBox(height: 10),
                Text(title),
                const SizedBox(height: 10),
                Text(subtitle),
                const SizedBox(height: 10),
                Text(trailing)
              ],
            ),
          );
  }
}

import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 100,
      expandedHeight: 200,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          children: [
            const CircleAvatar(
              foregroundImage: AssetImage("assets/images/pp.png"),
              backgroundColor: Colors.transparent,
              radius: 30,
            ),
            const SizedBox(width: 5),
            Text(
              "Mehmet Erkam",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Şuan halen test aşamasında")));
            },
            icon: const Icon(Icons.help))
      ],
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
    );
  }
}

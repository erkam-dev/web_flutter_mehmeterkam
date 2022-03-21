import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaCard extends StatelessWidget {
  SocialMediaCard({
    Key? key,
    required this.url,
    this.icon,
    this.text,
    this.color,
  }) : super(key: key);
  final String url;
  IconData? icon;
  String? text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () async {
          await canLaunch(url) ? await launch(url) : null;
        },
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              icon == null
                  ? Container()
                  : Icon(
                      icon,
                      color: color,
                    ),
              Text(
                "$text",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

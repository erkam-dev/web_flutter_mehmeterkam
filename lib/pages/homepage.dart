import 'package:flutter/material.dart';
import 'package:flutter_mehmeterkam_website/data/socialmedia_data.dart';
import 'package:flutter_mehmeterkam_website/widgets/my_sliver_appbar.dart';
import 'package:flutter_mehmeterkam_website/widgets/socialmedia_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const MySliverAppbar(),
          const SliverToBoxAdapter(
            child: ListTile(
              title: Text("Sosyal medya hesaplarımı takip edebilirsiniz"),
              leading: Icon(FontAwesomeIcons.share),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 15 / 8,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) => SocialMediaCard(
                url: socialUrls[index],
                icon: socialIcons[index],
                text: socialPlatforms[index],
                color: socialColors[index],
              ),
              childCount: socialUrls.length,
            ),
          ),
        ],
      ),
    );
  }
}

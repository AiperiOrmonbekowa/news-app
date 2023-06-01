import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';
import 'package:step_5/theme/app_color.dart';
import 'package:step_5/theme/app_styles.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/detail_button.dart';
import '../components/detail_date.dart';
import '../components/detail_desc.dart';
import '../components/detail_divider.dart';
import '../components/detail_image.dart';
import '../components/detail_title.dart';
import '../models/articles.dart';

class NewsDetailView extends StatelessWidget {
  const NewsDetailView({super.key, required this.news});
  final Articles news;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat("d MMM, y. H:m").format(news.publishedAt);
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.appBar,
        title: Text(
          news.title,
          style: AppTextStyles.body,
          overflow: TextOverflow.fade,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Share.share(news.url);
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: ListView(
           padding: const EdgeInsets.fromLTRB(12, 16, 12, 0),
          children: [
            NewsDetailTitle(news: news),
            const NewsDeteilDivider(),
            NewsDetailDate(time: time),
            const SizedBox(height: 10,),
            NewsDetailImage(news: news),
            const SizedBox(height: 15,),
            NewsDetailDesc(news: news),
            const SizedBox(height: 25,),
            NewsDetailButton(
              onPressed: () async {
                final uri = Uri.parse(news.url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                }
              },
            ),
          ],
        ),
      
    );
  }
}

import 'package:flutter/material.dart';
import '../models/articles.dart';
import '../theme/app_styles.dart';

class NewsDetailDesc extends StatelessWidget {
  const NewsDetailDesc({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      child: Text(
        news.description!,
        style: AppTextStyles.body,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constants/api_constant.dart';
import '../models/articles.dart';

class NewsDetailImage extends StatelessWidget {
  const NewsDetailImage({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Articles news;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      news.urlToImage ?? ApiConst.image,
      fit: BoxFit.fitWidth,
    );
  }
}

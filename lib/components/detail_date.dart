import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_styles.dart';

class NewsDetailDate extends StatelessWidget {
  const NewsDetailDate({
    Key? key,
    required this.time,
  }) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.access_time,
          color: AppColors.grey,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(time, style: AppTextStyles.time),
      ],
    );
  }
}

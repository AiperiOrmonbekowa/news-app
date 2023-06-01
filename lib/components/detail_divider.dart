import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class NewsDeteilDivider extends StatelessWidget {
  const NewsDeteilDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.grey,
      height: 40,
      thickness: 2,
    );
  }
}

import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_styles.dart';

class NewsDetailButton extends StatelessWidget {
  const NewsDetailButton({Key? key, required this.onPressed}) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.appBar),
        onPressed: onPressed,
        child: const Text(
          'READ MORE',
          style: AppTextStyles.body,
        ));
  }
}

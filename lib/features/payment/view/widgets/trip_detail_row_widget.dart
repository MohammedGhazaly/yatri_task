import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class TripDetailRowWidget extends StatelessWidget {
  final String leftText, rightText;
  const TripDetailRowWidget({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          leftText,
          style: AppStyle.getTextStyleBold16(context)
              .copyWith(color: AppColors.primaryColor),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              rightText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppStyle.getTextStyleBold12(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

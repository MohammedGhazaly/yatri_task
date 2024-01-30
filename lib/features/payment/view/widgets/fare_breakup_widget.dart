import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class FareBreakUpWidget extends StatelessWidget {
  final String leftText, rightText;
  const FareBreakUpWidget(
      {super.key, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          leftText,
          style: AppStyle.getTextStyleRegular12(context).copyWith(
            color: Colors.white,
          ),
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
              style: AppStyle.getTextStyleRegular12(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}

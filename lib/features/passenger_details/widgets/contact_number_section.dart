import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_assets.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class ContactNumberSection extends StatefulWidget {
  const ContactNumberSection({super.key});

  @override
  State<ContactNumberSection> createState() => _ContactNumberSectionState();
}

class _ContactNumberSectionState extends State<ContactNumberSection> {
  List<String> options = ["My Self", "For Others"];
  late String currentOption;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentOption = options[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 17, horizontal: 24),
      decoration: BoxDecoration(
        color: AppColors.darkColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Contact Number -",
            style: AppStyle.getTextStyleBold16(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          RadioListTile(
            activeColor: AppColors.primaryColor,
            contentPadding: EdgeInsets.all(0),
            dense: true,
            title: Row(
              children: [
                Image.asset(
                  AppAssets.profileIcon,
                  color: AppColors.primaryColor,
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  options[0],
                  style: AppStyle.getTextStyleRegular16(context)
                      .copyWith(color: Colors.white),
                )
              ],
            ),
            value: options[0],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {});
              currentOption = value.toString();
            },
          ),
          RadioListTile(
            activeColor: AppColors.primaryColor,
            contentPadding: EdgeInsets.all(0),
            dense: true,
            title: Row(
              children: [
                Image.asset(
                  AppAssets.othersIcon,
                  width: 30,
                  height: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  options[1],
                  style: AppStyle.getTextStyleRegular16(context)
                      .copyWith(color: Colors.white),
                )
              ],
            ),
            value: options[1],
            groupValue: currentOption,
            onChanged: (value) {
              setState(() {});
              currentOption = value.toString();
            },
          ),
        ],
      ),
    );
  }
}

import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class TravelRoute extends StatelessWidget {
  const TravelRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "Travel Route",
            style: AppStyle.getTextStyleBold16(context).copyWith(
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              "+3 city",
              style: AppStyle.getTextStyleBold9(context).copyWith(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            // height: ,
            child: EasyStepper(
              borderThickness: 0,
              showStepBorder: false,
              stepRadius: 8,
              alignment: Alignment.center,
              direction: Axis.horizontal,
              lineStyle: LineStyle(
                // lineSpace: 50,

                lineLength: 90,
                lineType: LineType.dashed,
                lineWidth: 1,
                defaultLineColor: Colors.white,
              ),
              activeStep: -1,
              fitWidth: true,
              padding: EdgeInsets.all(0),
              internalPadding: 0,
              steps: [
                EasyStep(
                  customTitle: Text(
                    "Lucknow",
                    textAlign: TextAlign.center,
                    style: AppStyle.getTextStyleBold9(context)
                        .copyWith(color: Colors.white),
                  ),
                  icon: Icon(Icons.abc),
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: AppColors.silverColor,
                  ),
                ),
                EasyStep(
                  // customTitle: ,
                  customTitle: Text(
                    "Gorakhpur",
                    textAlign: TextAlign.center,
                    style: AppStyle.getTextStyleBold9(context)
                        .copyWith(color: Colors.white),
                  ),
                  icon: Icon(Icons.abc),
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: AppColors.silverColor,
                  ),
                ),
                EasyStep(
                  customTitle: Text(
                    "Lucknow",
                    textAlign: TextAlign.center,
                    style: AppStyle.getTextStyleBold9(context)
                        .copyWith(color: Colors.white),
                  ),
                  // customTitle: ,
                  icon: Icon(Icons.abc),
                  customStep: CircleAvatar(
                    radius: 8,
                    backgroundColor: AppColors.silverColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

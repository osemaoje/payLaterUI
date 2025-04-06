import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_flutter_ui_task/colors.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80.h, left: 20.w, right: 20.w),
      height: 189.h,
      color: AppColors.headerBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Pay later",
                  style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w900,
                      fontFamily: "AvenirLTStd")),
              Row(
                children: [
                  Text("everywhere",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w900,
                          fontFamily: "AvenirLTStd")),
                  SizedBox(width: 4.w),
                  Container(
                      width: 17.w,
                      height: 16.62.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.r),
                        color: AppColors.whiteColor,
                      ),
                      child: SvgPicture.asset('assets/icons/exclamation.svg')),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 5.h,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.darkText,
                  ),
                  children: [
                    TextSpan(
                        text: "Shopping limit: ",
                        style: TextStyle(
                          fontFamily: "AvenirLTStd",
                          fontWeight: FontWeight.w500,
                        )),
                    TextSpan(text: "₦"),
                    TextSpan(
                        text: "0",
                        style: TextStyle(
                          fontFamily: "AvenirLTStd",
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 37.h,
                width: 134.w,
                padding: EdgeInsets.only(
                    top: 8.h, bottom: 8.h, right: 16.w, left: 16.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: AppColors.primaryBlue),
                child: Text(
                  "Activate Credit",
                  style: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: "AvenirLTStd",
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

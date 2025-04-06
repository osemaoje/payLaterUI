import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_flutter_ui_task/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 270.w,
            height: 40.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              color: AppColors.searchfieldcolor,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/search-normal.svg'),
                SizedBox(width: 10.w),
                Expanded(
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14.sp,
                      height: 1.2.h,
                      color: AppColors.darkText,
                    ),
                    decoration: InputDecoration(
                      isCollapsed: true,
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search for products or stores',
                      hintStyle: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.greyText,
                        height: 1.2.h,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Container(
              height: 45.h,
              width: 45.w,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.searchfieldcolor),
              child: SvgPicture.asset(
                'assets/icons/scan.svg',
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

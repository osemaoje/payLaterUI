import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_flutter_ui_task/colors.dart';

class ProductCard extends StatelessWidget {
  final Map data;
  const ProductCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.w,
      height: 174.h,
      padding: EdgeInsets.only(top: 12.h, right: 12.w, left: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 0),
            blurRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 112.h,
              child: Stack(
                clipBehavior: Clip.none, // <--- important to allow overflow
                children: [
                  Center(
                    child: Container(
                      height: 112.h,
                      width: 96.w,
                      child: Image.asset(
                        data["image"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (data.containsKey("discount"))
                    Positioned(
                      top: 4.h, // move it slightly up instead of left
                      left: 5.w,
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 0),
                                blurRadius: 1,
                              ),
                            ]),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Pay",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.greyText,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: "AvenirLTStd",
                              ),
                            ),
                            Text(
                              data["discount"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.primaryBlue,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "AvenirLTStd",
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (data.containsKey("merchantname"))
                    Positioned(
                      top: 4.h, // move it slightly up instead of left
                      left: 5.w,
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.r),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 0),
                                blurRadius: 1,
                              ),
                            ]),
                        alignment: Alignment.center,
                        child: SvgPicture.asset(data["merchantname"]),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Container(
            width: 135.w,
            child: Text(
              data["title"],
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.primaryBlue,
                    fontWeight: FontWeight.w800,
                  ),
                  children: [
                    TextSpan(text: "₦ "),
                    TextSpan(
                      text: data["price"],
                      style: TextStyle(fontFamily: "AvenirLTStd"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              if (data.containsKey("oldPrice"))
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                      color: AppColors.greyText,
                    ),
                    children: [
                      TextSpan(text: "₦ "),
                      TextSpan(
                          text: data["oldPrice"],
                          style: TextStyle(
                              fontFamily: "AvenirLTStd",
                              overflow: TextOverflow.ellipsis)),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

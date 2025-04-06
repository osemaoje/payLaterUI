import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MerchantCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const MerchantCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(120.r),
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        data["image"],
        fit: BoxFit.cover,
      ),
    );
  }
}

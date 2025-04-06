import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandCircleTile extends StatelessWidget {
  final String brandName;
  final String imageUrl;
  final bool isOnline;

  const BrandCircleTile({
    Key? key,
    required this.brandName,
    required this.imageUrl,
    this.isOnline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 60.w,
              height: 60.h,
              child: CircleAvatar(
                radius: 120.r,
                backgroundImage: AssetImage(imageUrl), // or NetworkImage
              ),
            ),
            if (isOnline)
              Positioned(
                top: 2.h,
                right: 5.w,
                child: Container(
                  width: 11.w,
                  height: 11.h,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 6),
        SizedBox(
          width: 80.w,
          child: Text(
            brandName,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 12.sp,
                fontFamily: "AvenirLTStd",
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}

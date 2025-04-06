import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_flutter_ui_task/colors.dart';
import 'package:new_flutter_ui_task/widgets/brand_circle_tile.dart';
import 'package:new_flutter_ui_task/widgets/header_section.dart';
import 'package:new_flutter_ui_task/widgets/search_bar.dart';
import 'package:new_flutter_ui_task/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final products1 = [
    {
      "title": "Nokia G20",
      "price": "39,780",
      "image": "assets/images/nokiaG20.png",
      "discount": "40%",
      "oldPrice": "88,000",
    },
    {
      "title": "iPhone XS Max 4GB",
      "price": "295,999",
      "image": "assets/images/iphoneXSmax.png",
      "merchantname": "assets/icons/ogabassey 1.svg",
      "oldPrice": "315,000",
    },
    {
      "title": "Anker Soundcore",
      "price": "39,780",
      "image": "assets/images/anker.png",
      "merchantname": "assets/icons/Okay Fones 1.svg",
      "oldPrice": "88,000",
    },
    {
      "title": "iPhone 12 Pro",
      "price": "490,500",
      "image": "assets/images/iphone12.png",
      "oldPrice": "535,000",
      "merchantname": "assets/icons/IMate Stores 1.svg",
    },
  ];

  final products2 = [
    {
      "title": "Anker Soundcore",
      "price": "39,780",
      "image": "assets/images/anker.png",
      "merchantname": "assets/icons/Okay Fones 1.svg",
      "oldPrice": "88,000",
    },
    {
      "title": "iPhone 12 Pro",
      "price": "490,500",
      "image": "assets/images/iphone12.png",
      "oldPrice": "535,000",
      "merchantname": "assets/icons/IMate Stores 1.svg",
    },
    {
      "title": "Nokia G20",
      "price": "39,780",
      "image": "assets/images/nokiaG20.png",
      "discount": "40%",
      "oldPrice": "88,000",
    },
    {
      "title": "iPhone XS Max 4GB",
      "price": "295,999",
      "image": "assets/images/iphoneXSmax.png",
      "merchantname": "assets/icons/ogabassey 1.svg",
      "oldPrice": "315,000",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderSection(),
            SizedBox(height: 20.h),
            SearchBarWidget(),
            SizedBox(height: 20.h),
            Container(
              color: AppColors.productBackgroundColor,
              child: Column(
                children: [
                  SizedBox(height: 15.h),
                  SizedBox(
                    height: 174.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: products1
                            .map((product) => Padding(
                                  padding: EdgeInsets.only(right: 16.w),
                                  child: ProductCard(data: product),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 174.h,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        children: products2
                            .map((product) => Padding(
                                  padding: EdgeInsets.only(right: 16.w),
                                  child: ProductCard(data: product),
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.only(right: 20.w, left: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured Merchants",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w900,
                        fontFamily: "AvenirLTStd",
                      )),
                  Text("View all",
                      style: TextStyle(
                          color: AppColors.primaryBlue,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: "ProductSans")),
                ],
              ),
            ),
            // SizedBox(height: 20.h),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: const [
                BrandCircleTile(
                    brandName: 'Justrite',
                    imageUrl: 'assets/images/justrite.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'Orile Restaurant',
                    imageUrl: 'assets/images/orile.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'Slot',
                    imageUrl: 'assets/images/slot.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'Pointek',
                    imageUrl: 'assets/images/pointesk.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'ogabassey',
                    imageUrl: 'assets/images/ogabassey.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'Casper Stores',
                    imageUrl: 'assets/images/slot.png'),
                BrandCircleTile(
                    brandName: 'Dreamworks',
                    imageUrl: 'assets/images/dreamworks.png'),
                BrandCircleTile(
                    brandName: 'Hubmart',
                    imageUrl: 'assets/images/hubmart.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'Just Used',
                    imageUrl: 'assets/images/justused.png',
                    isOnline: true),
                BrandCircleTile(
                    brandName: 'Just fones',
                    imageUrl: 'assets/images/justfones.png',
                    isOnline: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

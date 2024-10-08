import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task1/core/svg_image/svg_image.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_textstyles.dart';
import 'package:task1/features/home_screen/presentation/provider/cart_provider/cart_provider.dart';

import '../../../../config/routes/app_navigator.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/shared/icon_botton.dart';
import '../../domain/entites/oil_model.dart';

class ExclusiveOffer extends StatefulWidget {
  const ExclusiveOffer({super.key});

  @override
  State<ExclusiveOffer> createState() => _ExclusiveOfferState();
}

class _ExclusiveOfferState extends State<ExclusiveOffer> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Cart>(
      context,
    );
    return SizedBox(
      height: 260.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Exclusive Offers',
                style: AppTextStyles.styleSemibold20,
              ),
              const Spacer(),
              InkWell(
                /// TODO: navigate to see all
                onTap: () {
                  AppNavigator.navigateNamedTo(
                      context, AppRoutes.exclusiveOffer);
                },
                child: Text(
                  'see all',
                  style: AppTextStyles.style16,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                width: 8.w,
              ),
              itemBuilder: (context, index) => Container(
                width: 140.w,
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: AppColors.grayColor4, width: 1.w),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Image.asset(
                        height: 100.h,
                        carOilList[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      carOilList[index].type,
                      style: AppTextStyles.style8,
                    ),
                    Row(
                      children: [
                        Text(
                          carOilList[index].brand,
                        ),
                        const Text('-'),
                        Text(carOilList[index].volume.toString()),
                      ],
                    ),
                    Text(carOilList[index].viscosity),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIconBotton(
                          onPressed: () {
                            if (carOilList[index].isCart == false) {
                              provider.addCart(carOilList[index]);
                              carOilList[index].isCart = true;
                            } else {
                              provider.removeCart(carOilList[index]);
                              carOilList[index].isCart = false;
                            }
                          },
                          icon: AppSvgImage(
                            image: IconAssets.cartIcon,
                            width: 30.w,
                            color: carOilList[index].isCart == true
                                ? AppColors.activeColorBar
                                : AppColors.grayColor,
                            height: 30.h,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '${carOilList[index].price.toString()} SR',
                              style: AppTextStyles.style15Medium,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(1.r),
                                    color: AppColors.yellowLightColor,
                                    child: Text(
                                      carOilList[index].discount.toString(),
                                      style: AppTextStyles.style9,
                                    )),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '${carOilList[index].oldPrice.toString()} SR',
                                  style: AppTextStyles.style10MediumLineThrough,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              itemCount: carOilList.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

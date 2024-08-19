import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task1/core/svg_image/svg_image.dart';
import 'package:task1/core/utils/app_assets.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/core/utils/app_textstyles.dart';

import '../../../../core/shared/icon_botton.dart';
import '../../domain/entites/oil_model.dart';
import '../provider/cart_provider/cart_provider.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Cart>(
      context,
    );
    return SizedBox(
      height: 240.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Best Selling',
                style: AppTextStyles.styleSemibold20,
              ),
              const Spacer(),
              Text(
                'see all',
                style: AppTextStyles.style16,
              ),
            ],
          ),
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: 8,
              ),
              itemBuilder: (context, index) => Container(
                width: 150.w,
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: AppColors.grayColor4, width: 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(carOilList2[index].image).image,
                            fit: BoxFit.contain),
                      ),
                      child: Image.asset(
                        carOilList2[index].image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Text(
                      carOilList2[index].type,
                      style: AppTextStyles.style8,
                    ),
                    Row(
                      children: [
                        Text(
                          carOilList2[index].brand,
                        ),
                        const Text('-'),
                        Text(carOilList2[index].volume.toString()),
                      ],
                    ),
                    Text(carOilList2[index].viscosity),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIconBotton(
                          onPressed: () {
                            if (carOilList2[index].isCart == false) {
                              provider.addCart(carOilList2[index]);
                              carOilList2[index].isCart = true;
                            } else {
                              provider.removeCart(carOilList2[index]);
                              carOilList2[index].isCart = false;
                            }
                          },
                          icon: AppSvgImage(
                            image: IconAssets.cartIcon,
                            color: carOilList2[index].isCart == true
                                ? AppColors.activeColorBar
                                : AppColors.grayColor,
                            width: 30.w,
                            height: 30.h,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '${carOilList2[index].price.toString()} SR',
                              style: AppTextStyles.style15Medium,
                            ),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(1.r),
                                    color: AppColors.yellowLightColor,
                                    child: Text(
                                      carOilList2[index].discount.toString(),
                                      style: AppTextStyles.style9,
                                    )),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '${carOilList2[index].oldPrice.toString()} SR',
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
              itemCount: carOilList2.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

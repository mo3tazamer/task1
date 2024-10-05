import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task1/features/home_screen/presentation/widgets/custom_appbar.dart';

import '../../../../core/shared/app_search_bar.dart';
import '../../../../core/shared/appbackbutton.dart';
import '../../../../core/shared/icon_botton.dart';
import '../../../../core/svg_image/svg_image.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_textstyles.dart';
import '../../domain/entites/oil_model.dart';
import '../provider/cart_provider/cart_provider.dart';

class ExclusiveOfferDetails extends StatefulWidget {
  const ExclusiveOfferDetails({super.key});

  @override
  State<ExclusiveOfferDetails> createState() => _ExclusiveOfferDetailsState();
}

class _ExclusiveOfferDetailsState extends State<ExclusiveOfferDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Column(
          children: [
            const AppSearchBar(),
            SizedBox(
              height: 5.h,
            ),
            _gridViewItems(context)
          ],
        ),
      ),
    );
  }
}

CustomAppbar _customAppbar() {
  return CustomAppbar(
    centerTitle: true,
    leadingWidth: 50.w,
    leading: const AppBackButton(),
    title: Text(
      AppStrings.exclusiveOffer,
      style: AppTextStyles.style18Medium.copyWith(color: Colors.black),
    ),
  );
}

Widget _gridViewItems(context) {
  var provider = Provider.of<Cart>(
    context,
  );
  return Expanded(
    child: GridView.builder(
      itemBuilder: (context, index) => Container(
        width: double.infinity,
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
              width: 180.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset(carOilList[index].image).image,
                    fit: BoxFit.cover),
              ),
              child: Image.asset(
                carOilList[index].image,
                fit: BoxFit.fitHeight,
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
                    width: 25.w,
                    color: carOilList[index].isCart == true
                        ? AppColors.activeColorBar
                        : AppColors.grayColor,
                    height: 25.h,
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
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.w,
          crossAxisSpacing: 10.w,
          childAspectRatio: .6),
    ),
  );
}

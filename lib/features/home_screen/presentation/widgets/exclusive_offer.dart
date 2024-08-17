import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/core/utils/app_colors.dart';

import '../../domain/entites/oil_model.dart';

class ExclusiveOffer extends StatelessWidget {
  const ExclusiveOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Exclusive Offers',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const Spacer(),
              Text(
                'see all',
                style: Theme.of(context).textTheme.titleSmall,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: AppColors.grayColor4, width: 1),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Image.asset(carOilList[index].image).image,
                            fit: BoxFit.contain),
                      ),
                      child: Image.asset(
                        carOilList[index].image,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Text(carOilList[index].brand),
                    Text(carOilList[index].type),
                    Text(carOilList[index].viscosity),
                    Text(carOilList[index].volume.toString()),
                    Text(carOilList[index].price.toString()),
                    Text(carOilList[index].rating.toString()),
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

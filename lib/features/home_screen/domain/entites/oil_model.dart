import 'package:equatable/equatable.dart';

import '../../../../core/utils/app_assets.dart';

class CarOil extends Equatable {
  final String brand;
  final String type;
  final String viscosity;
  final int volume;
  final double price;
  final double oldPrice;
  final String discount;
  late bool isCart;

  final String image;

  CarOil({
    required this.brand,
    required this.type,
    required this.viscosity,
    required this.volume,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.image,
    required this.isCart,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        brand,
        type,
        viscosity,
        volume,
        price,
        oldPrice,
        discount,
        image,
        isCart
      ];
}

// Fake data
List<CarOil> carOilList = [
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'Mobile s',
      type: 'motor oil s',
      viscosity: '5W-30',
      volume: 5055,
      price: 300,
      oldPrice: 350,
      discount: '-5%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile scs',
      type: 'motor oilcsc',
      viscosity: '10W-40 scs',
      volume: 5005,
      price: 200,
      oldPrice: 300,
      discount: '-8%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobileqq',
      type: 'motor oil qw',
      viscosity: '10W-30ee',
      volume: 5350,
      price: 100,
      oldPrice: 150,
      discount: '-2%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile34',
      type: 'motor oil11',
      viscosity: '0W-2022',
      volume: 50001,
      price: 2400,
      oldPrice: 250,
      discount: '-1%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '15W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%',
      isCart: false),
];
List<CarOil> carOilList2 = [
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'Mobile',
      type: 'motor oil',
      viscosity: '5W-30',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '10W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '10W-30',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '0W-20',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%',
      isCart: false),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '15W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%',
      isCart: false),
];

import '../../../../core/utils/app_assets.dart';

class CarOil {
  final String brand;
  final String type;
  final String viscosity;
  final int volume; // in liters
  final double price; // in USD
  final double oldPrice;
  final String discount;

  // in USD

  final String image; // from 0 to 5

  CarOil({
    required this.brand,
    required this.type,
    required this.viscosity,
    required this.volume,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.image,
  });
}

// Fake data
List<CarOil> carOilList = [
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'Mobile',
      type: 'motor oil',
      viscosity: '5W-30',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '10W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '10W-30',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '0W-20',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil1,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '15W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
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
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '10W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '10W-30',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '0W-20',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
  CarOil(
      image: ImagesAssets.oil2,
      brand: 'mobile',
      type: 'motor oil',
      viscosity: '15W-40',
      volume: 5000,
      price: 240,
      oldPrice: 250,
      discount: '-4%'),
];

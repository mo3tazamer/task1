import '../../../../core/utils/app_assets.dart';

class CarOil {
  final String brand;
  final String type;
  final String viscosity;
  final double volume; // in liters
  final double price; // in USD
  final double rating;
  final String image; // from 0 to 5

  CarOil({
    required this.brand,
    required this.type,
    required this.viscosity,
    required this.volume,
    required this.price,
    required this.rating,
    required this.image,
  });
}

// Fake data
List<CarOil> carOilList = [
  CarOil(
    image: ImagesAssets.oil1,
    brand: 'Mobil 1',
    type: 'Full Synthetic',
    viscosity: '5W-30',
    volume: 1.0,
    price: 29.99,
    rating: 4.8,
  ),
  CarOil(
    image: ImagesAssets.oil1,
    brand: 'Castrol',
    type: 'Synthetic Blend',
    viscosity: '10W-40',
    volume: 5.0,
    price: 49.99,
    rating: 4.6,
  ),
  CarOil(
    image: ImagesAssets.oil1,
    brand: 'Valvoline',
    type: 'Conventional',
    viscosity: '10W-30',
    volume: 4.0,
    price: 24.99,
    rating: 4.3,
  ),
  CarOil(
    image: ImagesAssets.oil1,
    brand: 'Pennzoil',
    type: 'Full Synthetic',
    viscosity: '0W-20',
    volume: 1.5,
    price: 32.99,
    rating: 4.7,
  ),
  CarOil(
    image: ImagesAssets.oil1,
    brand: 'Shell Rotella',
    type: 'Heavy Duty Diesel',
    viscosity: '15W-40',
    volume: 3.8,
    price: 36.99,
    rating: 4.5,
  ),
];

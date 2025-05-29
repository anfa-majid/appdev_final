import '../model/banner.dart';
import '../model/category.dart';
import '../model/product.dart';

abstract class HomeState {}

class Initial extends HomeState {}

class Loading extends HomeState {}

class Loaded extends HomeState {
  final List<BannerModel> banners;
  final List<CategoryModel> categories;
  final List<ProductModel> products;

  Loaded(
      {required this.banners,
      required this.categories,
      required this.products});
}

class Error extends HomeState {
  final String message;

  Error({required this.message});
}
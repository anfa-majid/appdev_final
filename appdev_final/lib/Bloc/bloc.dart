import '../repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'event.dart';
import 'state.dart';

class HomeBloc extends Bloc<Event, HomeState> {
  final Repository repository;

  HomeBloc({required this.repository}) : super(Initial()) {
    on<LoadData>(_onLoadData);
  }

  void _onLoadData(LoadData event, Emitter<HomeState> emit) async {
    emit(Loading());
    try {
      final banners = await repository.getBanners();
      final categories = await repository.getCategories();
      final products = await repository.getPopularProducts();
      emit(Loaded(
          banners: banners, categories: categories, products: products));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
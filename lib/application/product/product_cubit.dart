import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:projectimagefirb/data/repositories_product.dart';
import 'package:projectimagefirb/domain/models_product.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductLoading());
  RepositoriesProduct repositoriesProduct = RepositoriesProduct();

  getProductDate() async {
    try {
      final List<ModelsProduct> products = await repositoriesProduct
          .getProductDate();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}

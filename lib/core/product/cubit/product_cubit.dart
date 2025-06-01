import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:projectimagefirb/core/product/data/repositories_product.dart';
import 'package:projectimagefirb/core/product/domain/models_product.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductLoading());
  RepositoriesProduct repositoriesProduct = RepositoriesProduct();

  getProductDate() async {
    try {
      await Future.delayed(Duration(seconds: 4));
      final List<ModelsProduct> products = await repositoriesProduct
          .getProductDate();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }
}

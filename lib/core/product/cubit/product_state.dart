part of 'product_cubit.dart';

@immutable
sealed class ProductState extends Equatable {
  // final List<ModelsProduct> productList;
  // final String? errorMessage;
  // const ProductState(/*this.productList,*/ this.errorMessage);
  const ProductState();
  @override
  List<Object> get props => [/*productList,*/ /*errorMessage!*/];
}

// final class ProductInitial extends ProductState {
//   const ProductInitial(super.productList, super.errorMessage);
// }

final class ProductLoading extends ProductState {
  const ProductLoading();
  @override
  List<Object> get props => [];
}

final class ProductLoaded extends ProductState {
  final List<ModelsProduct> productList;
  const ProductLoaded(this.productList);
  @override
  List<Object> get props => [productList];
}

final class ProductError extends ProductState {
  final String errorMessage;
  const ProductError(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

// abstract class ProductState extends Equatable {
//   const ProductState();
//   @override
//   List<Object> get props => [];
// }

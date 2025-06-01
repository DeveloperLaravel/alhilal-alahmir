import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projectimagefirb/core/product/cubit/product_cubit.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit()..getProductDate(),
      child: Scaffold(
        body: BlocBuilder<ProductCubit, ProductCubit>(
          builder: (context, theme) {
            switch (theme) {
              case ProductLoading():
                return CircularProgressIndicator();
              case ProductLoaded():
                return GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,

                    childAspectRatio: 0.7,
                  ),
                  itemCount: theme,
                  itemBuilder: (context, index) {
                    final product = theme.repositoriesProduct[index];
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.network(
                              product.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              case ProductError():
                return Center(child: Text(theme.errorMessage.toString()));

              default:
            }
            return Container();
          },
        ),
      ),
    );
  }
}

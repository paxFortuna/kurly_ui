import 'package:flutter/material.dart';
import '../../components/circle_container.dart';
import 'product_filter_button.dart';
import '../../../models/product.dart';
import '../../components/product_item.dart';

class ThriftyShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 100,
                child: Image.asset(
                  "assets/images/kurly_banner_1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  child: ProductFilterButton(),
                  width: 100,
                ),
              )
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 30.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                          iconPath: 'assets/icons/shopping-cart.png'),
                    )
                  ],
                );
              },
              childCount: productList.length,
            ),
          ),
        )
      ],
    );
  }
}
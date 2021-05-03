import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/detils_screen.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Product", press: () {}),
        // Icon(Icons.chevron_right)
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                  press: () => Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: ProductDetailsArguments(
                      product: demoProducts[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

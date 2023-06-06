import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/core/models/product_model.dart';
import 'package:marketplace_app/utils/utils.dart';
import 'package:marketplace_app/views/shared_widgets/widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: Stack(
            children: [
              Image.asset(
                product.image,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: InkWell(
                  child: Icon(
                    product.isFavorite ? Iconsax.heart5 : Iconsax.heart,
                    color: product.isFavorite ? kRed : black,
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(14),
                SubText(
                  text: product.type,
                  foreground: black.withOpacity(.49),
                  fontWeight: FontWeight.w500,
                  textSize: 13,
                ),
                SizedBox(
                  height: 40,
                  child: SubText(
                    text: product.name,
                    fontWeight: FontWeight.w700,
                    textSize: 13,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(
                      Icons.star_rounded,
                      color: kStar,
                      size: 20,
                    ),
                    const Gap(2),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: SubText(
                        text: '${product.rating} | ${product.ratings}',
                        foreground: black.withOpacity(.5),
                        textSize: 12,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: SubText(
                        text: '\$${product.price}',
                        foreground: kGreen,
                        textSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/core/models/product_model.dart';
import 'package:marketplace_app/utils/utils.dart';
import 'package:marketplace_app/views/screens/home/widgets/images_viewer.dart';
import 'package:marketplace_app/views/shared_widgets/badge_icon.dart';
import 'package:marketplace_app/views/shared_widgets/widgets.dart';

class ProductDetail extends HookWidget {
  const ProductDetail({
    required this.product,
    super.key,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Iconsax.arrow_left_2,
            size: 26,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              product.isFavorite ? Iconsax.heart5 : Iconsax.heart,
              color: product.isFavorite ? kRed : black,
              size: 26,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.share,
              size: 26,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 12, 12, 0),
            child: BadgeIcon(
              value: '1',
              icon: Iconsax.bag_2,
              size: 28,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Animate(
            effects: const [
              FadeEffect(
                delay: Duration(milliseconds: 500),
              ),
              SlideEffect(
                begin: Offset(0, .2),
              )
            ],
            child: ImagesViewer(
              productImages: product.productImages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Animate(
              effects: const [
                FadeEffect(
                  delay: Duration(milliseconds: 700),
                ),
                SlideEffect(
                  begin: Offset(0, .2),
                )
              ],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Iconsax.shop,
                        size: 17,
                        color: kRed,
                      ),
                      const Gap(6),
                      SubText(
                        text: product.storeName,
                        foreground: kRed,
                        fontWeight: FontWeight.w600,
                        textSize: 16,
                      ),
                    ],
                  ),
                  const Gap(7),
                  SubText(
                    text: product.name,
                    fontWeight: FontWeight.w700,
                    textSize: 20,
                  ),
                  const Gap(7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: kStar,
                            size: 25,
                          ),
                          const Gap(4),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: SubText(
                              text: '${product.rating} ratings',
                              foreground: kGreen.withOpacity(.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Icon(
                          Icons.circle,
                          color: kGreen.withOpacity(.7),
                          size: 6,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: SubText(
                          text: '2.3k+ review',
                          foreground: kGreen.withOpacity(.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Icon(
                          Icons.circle,
                          color: kGreen.withOpacity(.7),
                          size: 6,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: SubText(
                          text: '2.9k+ Sold',
                          foreground: kGreen.withOpacity(.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Gap(10),
          Animate(
            effects: const [
              FadeEffect(
                delay: Duration(milliseconds: 900),
              ),
              SlideEffect(
                begin: Offset(0, .2),
              )
            ],
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 1,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: kGreen.withOpacity(.5),
                      ),
                    ),
                  ),
                  TabBar(
                    controller: tabController,
                    isScrollable: true,
                    tabs: [
                      Container(
                        margin: const EdgeInsets.only(
                          right: 16,
                          left: 16,
                        ),
                        height: 45,
                        child: const Row(
                          children: [
                            Text('About Item'),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          right: 16,
                          left: 16,
                        ),
                        height: 45,
                        child: const Row(
                          children: [
                            Text('Reviews'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Animate(
            effects: const [
              FadeEffect(
                delay: Duration(milliseconds: 1200),
              ),
              SlideEffect(
                begin: Offset(0, .2),
              )
            ],
            child: SizedBox(
              height: 200,
              child: TabBarView(
                controller: tabController,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    child: Column(
                      children: [
                        Gap(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Brand:  ',
                                    style: TextStyle(
                                      color: kGreen,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Gucci',
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Color:  ',
                                    style: TextStyle(
                                      color: kGreen,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Aprikot',
                                    style: TextStyle(
                                      color: kTextColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(10),
                        SubText(
                          text: 'Reviews',
                          textSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomSheet: Animate(
        effects: const [
          FadeEffect(
            delay: Duration(milliseconds: 800),
          ),
          SlideEffect(
            begin: Offset(0, .2),
          )
        ],
        child: Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          decoration: BoxDecoration(
            color: white,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF95DFFF).withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(3, -5),
              )
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubText(
                    text: 'Total Price',
                    foreground: kGreen,
                    textSize: 14,
                  ),
                  SubText(
                    text: '\$${product.price}',
                    foreground: kGreen,
                    textSize: 26,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 53,
                    width: 75,
                    decoration: const BoxDecoration(
                      color: kGreen,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.bag_2,
                          color: white,
                        ),
                        Gap(10),
                        SubText(
                          text: '1',
                          foreground: white,
                          fontWeight: FontWeight.w600,
                          textSize: 18,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 53,
                    width: 110,
                    decoration: const BoxDecoration(
                      color: kTextColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: const Center(
                      child: SubText(
                        text: 'Buy now',
                        foreground: white,
                        fontWeight: FontWeight.w600,
                        textSize: 16,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

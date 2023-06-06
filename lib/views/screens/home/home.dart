import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:iconsax/iconsax.dart';
import 'package:marketplace_app/core/models/banner_model.dart';
import 'package:marketplace_app/core/models/category_model.dart';
import 'package:marketplace_app/core/models/product_model.dart';
import 'package:marketplace_app/utils/utils.dart';
import 'package:marketplace_app/views/screens/dashboard/widgets/appbar.dart';
import 'package:marketplace_app/views/screens/dashboard/widgets/badge_icon.dart';
import 'package:marketplace_app/views/screens/dashboard/widgets/banner.dart';
import 'package:marketplace_app/views/screens/dashboard/widgets/category.dart';
import 'package:marketplace_app/views/screens/dashboard/widgets/dot_indicator.dart';
import 'package:marketplace_app/views/shared_widgets/widgets.dart';

class Home extends HookWidget {
  Home({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(
      icon: Iconsax.category,
      title: 'Category',
    ),
    CategoryModel(
      icon: Iconsax.airplane,
      title: 'Flight',
    ),
    CategoryModel(
      icon: Iconsax.document_text,
      title: 'Bill',
    ),
    CategoryModel(
      icon: Iconsax.global,
      title: 'Data plan',
    ),
    CategoryModel(
      icon: Iconsax.dollar_circle,
      title: 'Top up',
    ),
  ];

  final List<BannerModel> banners = [
    BannerModel(
      imageBackground: Image.asset(
        ImageAssets.homeBanner1,
        fit: BoxFit.cover,
        height: 350,
      ),
      header: '#FASHION DAY',
      title: '80% OFF',
      subtitle: 'Discover fashion that suits to your style',
      buttonTitle: 'Check this out',
    ),
    BannerModel(
      imageBackground: Image.asset(
        ImageAssets.homeBanner2,
        fit: BoxFit.cover,
        height: 350,
      ),
      header: '#BEAUTYSALE',
      title: 'DISCOVER OUR BEAUTY SELECTION',
      buttonTitle: 'Check this out',
    )
  ];

  final List<ProductModel> products = [
    const ProductModel(
      image: ImageAssets.product1,
      type: 'Shirt',
      name: "Essential Men's Short-Sleeve Crewnect T-Shirt",
      rating: 4.9,
      price: 12,
      ratings: 2356,
      isFavorite: true,
    ),
    const ProductModel(
      image: ImageAssets.product2,
      type: 'Shirt',
      name: "Essential Men's Short-Sleeve Crewnect T-Shirt",
      rating: 4.9,
      price: 30,
      ratings: 2356,
      isFavorite: false,
    ),
    const ProductModel(
      image: ImageAssets.product3,
      type: 'Shirt',
      name: "Essential Men's Short-Sleeve Crewnect T-Shirt",
      rating: 4.9,
      price: 18,
      ratings: 2356,
      isFavorite: false,
    ),
    const ProductModel(
      image: ImageAssets.product4,
      type: 'Shirt',
      name: "Essential Men's Long-Sleeve Oxford Crewnect T-Shirt",
      rating: 4.9,
      price: 40,
      ratings: 2356,
      isFavorite: false,
    ),
    const ProductModel(
      image: ImageAssets.product2,
      type: 'Shirt',
      name: "Essential Men's Short-Sleeve Crewnect T-Shirt",
      rating: 4.9,
      price: 19,
      ratings: 2356,
      isFavorite: false,
    ),
    const ProductModel(
      image: ImageAssets.product1,
      type: 'Shirt',
      name: "Essential Men's Short-Sleeve Crewnect T-Shirt",
      rating: 4.9,
      price: 25,
      ratings: 2356,
      isFavorite: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfdfd),
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 270,
                backgroundColor: white,

                scrolledUnderElevation: 4,
                shadowColor: kTextColor.withOpacity(.1),
                foregroundColor: black,
                title: const Appbar(),
                // actionsIconTheme: IconThemeData(color: black),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: BadgeIcon(
                      value: '1',
                      icon: Iconsax.bag_2,
                    ),
                  ),
                  Gap(15),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: BadgeIcon(
                      value: '9+',
                      icon: Iconsax.message_text,
                    ),
                  ),
                  Gap(15),
                ],
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(75),
                  child: ColoredBox(
                    color: white,
                  ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: SizedBox.expand(
                    child: PageView.builder(
                      itemBuilder: (context, index) => BannerWidget(
                        banner: banners[index],
                        currentIndex: index,
                        length: banners.length,
                      ),
                      itemCount: banners.length,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF95DFFF).withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(3, 2),
                      )
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...categories.map(
                            (category) => CategoryItem(
                              category: category,
                            ),
                          ),
                        ],
                      ),
                      const Gap(25),
                      const DotIndicator(
                        current: 0,
                        length: 3,
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: ContentHeader(),
              ),
              SliverPadding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    childAspectRatio: 2 / 2.9,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final product = products[index];
                      return GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const ItemDetailsView(),
                        //   ),
                        // ),
                        child: ProductCard(
                          product: product,
                        ),
                      );
                    },
                    childCount: 6,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContentHeader extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: const Color(0xfffdfdfd),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubText(
            text: 'Best Sale Product',
            textSize: 18,
            fontWeight: FontWeight.w600,
          ),
          SubText(
            text: 'See more',
            textSize: 16,
            foreground: kRed,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 65;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

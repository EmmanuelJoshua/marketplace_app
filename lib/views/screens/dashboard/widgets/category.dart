import 'package:flutter/material.dart';
import 'package:marketplace_app/core/models/category_model.dart';
import 'package:marketplace_app/utils/utils.dart';
import 'package:marketplace_app/views/shared_widgets/widgets.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    required this.category, super.key,
  });

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      child: Column(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: const Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              category.icon,
              color: kTextColor.withOpacity(.9),
            ),
          ),
          const Gap(9),
          SubText(
            text: category.title,
            foreground: black.withOpacity(0.5),
            fontWeight: FontWeight.w500,
            textSize: 13,
          )
        ],
      ),
    );
  }
}

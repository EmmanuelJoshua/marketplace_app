import 'package:flutter/material.dart';
import 'package:marketplace_app/core/models/banner_model.dart';
import 'package:marketplace_app/utils/utils.dart';
import 'package:marketplace_app/views/screens/home/widgets/dot_indicator.dart';
import 'package:marketplace_app/views/shared_widgets/widgets.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    required this.banner,
    required this.currentIndex,
    required this.length,
    super.key,
  });

  final BannerModel banner;
  final int currentIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        banner.imageBackground,
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubText(
                    text: banner.header,
                    fontWeight: FontWeight.w600,
                  ),
                  DotIndicator(
                    current: currentIndex,
                    length: length,
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: HeaderText(
                  text: banner.title,
                  textSize: 32,
                  fontWeight: FontWeight.w800,
                ),
              ),
              if (banner.subtitle != null)
                SizedBox(
                  width: 160,
                  child: SubText(
                    text: banner.subtitle!,
                    textSize: 11,
                    foreground: kTextColor.withOpacity(0.6),
                  ),
                )
              else
                const Gap(10),
              const Gap(10),
              DefaultButton(
                title: banner.buttonTitle,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

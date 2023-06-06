import 'package:flutter/material.dart';

class BannerModel {

  BannerModel({
    required this.imageBackground,
    required this.header,
    required this.title,
    required this.buttonTitle,
    this.subtitle,
  });
  final Widget imageBackground;
  final String header;
  final String title;
  final String? subtitle;
  final String buttonTitle;
}

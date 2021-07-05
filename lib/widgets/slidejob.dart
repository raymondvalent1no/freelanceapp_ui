import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class SlideJob extends StatelessWidget {
  const SlideJob(
      {Key? key,
      required this.title,
      required this.description,
      required this.image})
      : super(key: key);

  final String title;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, width: 145.61, height: 106.96),
        SizedBox(height: 12.04),
        Text(
          title,
          style: slideTitleTextStyle,
        ),
        SizedBox(height: 4.42),
        Text(description, style: slideDesciptionTextStyle),
      ],
    );
  }
}

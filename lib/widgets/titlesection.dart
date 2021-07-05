import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection(
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: titleTextStyle),
              SizedBox(height: 8),
              Text(description, style: descriptionTitleTextStyle),
            ],
          ),
          FittedBox(
            child: Image.asset(
              image,
              width: 150,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

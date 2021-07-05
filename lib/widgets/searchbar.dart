import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffC16F77),
      ),
      height: 42,
      width: 277,
      child: Row(
        children: [
          SizedBox(width: 20),
          Image.asset(
            'assets/search.png',
            width: 18,
            height: 18,
          ),
          SizedBox(width: 8),
          Text(
            'Search Freelancers, Project',
            style: searchBarTextStyle,
          ),
          SizedBox(width: 61),
        ],
      ),
    );
  }
}

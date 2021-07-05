import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xffC16F77),
      ),
      width: 42,
      height: 42,
      child: Center(
        child: Image.asset(
          'assets/bi_filter.png',
          width: 28,
          height: 28,
        ),
      ),
    );
  }
}

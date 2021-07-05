import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:flutter/material.dart';

class FreelancerDetailProfile extends StatelessWidget {
  const FreelancerDetailProfile(
      {Key? key,
      required this.name,
      required this.profession,
      required this.location,
      required this.imageProfile})
      : super(key: key);

  final String name;
  final String profession;
  final String location;
  final String imageProfile;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  imageProfile,
                  width: 113.88,
                  height: 130,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 32.12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      color: redColor,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    profession,
                    style: TextStyle(
                      fontSize: 14,
                      color: redColor,
                    ),
                  ),
                  SizedBox(height: 9),
                  Row(
                    children: [
                      Image.asset(
                        'assets/map.png',
                        width: 12,
                        height: 14.67,
                      ),
                      SizedBox(width: 6),
                      Text(
                        location,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 21),
                  Container(
                    decoration: BoxDecoration(
                      color: redColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 100,
                    height: 32,
                    child: TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'HIRE ME',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

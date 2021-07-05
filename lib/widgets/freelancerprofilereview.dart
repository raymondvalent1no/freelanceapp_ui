import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:findfreelancerapp_ui/pages/detailfreelancer_page.dart';
import 'package:flutter/material.dart';

class FreelancerProfileReview extends StatelessWidget {
  const FreelancerProfileReview(
      {Key? key,
      required this.imageProfile,
      required this.name,
      required this.profession,
      required this.location,
      required this.rating,
      required this.fee})
      : super(key: key);

  final String imageProfile;
  final String name;
  final String profession;
  final String location;
  final String rating;
  final String fee;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: pinkColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/iconprofile1.png',
                width: 86,
                height: 83,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 13),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Andrea Hutama Karya',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Programmer',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 9),
                Row(
                  children: [
                    Image.asset(
                      'assets/star.png',
                      width: 8.33,
                      height: 7.92,
                    ),
                    SizedBox(width: 4),
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(width: 16),
                    Image.asset(
                      'assets/map.png',
                      width: 2.5,
                      height: 2.5,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'Bandung',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.black45,
                      ),
                    ),
                    SizedBox(width: 104),
                    Text(
                      '\$55/hr',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: 90,
                      height: 28,
                      child: TextButton(
                        onPressed: () {},
                        child: Center(
                          child: Text(
                            'HIRE ME',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: 90,
                      height: 28,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailFreelancerPage()));
                        },
                        child: Center(
                          child: Text(
                            'PROFILE',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAF4A53),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

import 'package:findfreelancerapp_ui/constants/constants.dart';
import 'package:findfreelancerapp_ui/pages/homepage.dart';
import 'package:findfreelancerapp_ui/widgets/freelancerdetailprofile.dart';
import 'package:flutter/material.dart';

class DetailFreelancerPage extends StatelessWidget {
  const DetailFreelancerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: pinkColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                //icon arrow back
                height: 81,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: redColor,
                  ),
                ),
              ),
              FreelancerDetailProfile(
                name: 'Stephan Lee',
                profession: 'UI/UX Designer',
                location: 'Jakarta',
                imageProfile: 'assets/iconprofile2.png',
              ),
              SizedBox(height: 32),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF2F4F2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 29),
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Overview',
                                style: subtitleTextStyle,
                              ),
                              SizedBox(height: 12),
                              Text(
                                'From humble startups to software used by billions,\nI’ve had a blast designing things that people love. At\nGoogle, I\'m proudly building the future of Chrome\nalongside some of the industry\'s greatest innovators.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 27),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Skills',
                                style: subtitleTextStyle,
                              ),
                              SizedBox(height: 11),
                              Text(
                                'UX Design, UI Design, IoT Design, Micro-interaction\nDesign, 3D Illustration',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 36),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: pinkColor,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                width: 119,
                                height: 35,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      'Portfolio',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: redColor,
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
                                width: 97,
                                height: 35,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      'Clients',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: pinkColor,
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
                                width: 100,
                                height: 35,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      'Review',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: pinkColor),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 38),
                          Image.asset(
                            'assets/portofolio.png',
                            width: 332,
                            height: 238,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:findfreelancerapp_ui/pages/detailfreelancer_page.dart';
import 'package:findfreelancerapp_ui/widgets/filter.dart';
import 'package:findfreelancerapp_ui/widgets/freelancerprofilereview.dart';
import 'package:findfreelancerapp_ui/widgets/searchbar.dart';
import 'package:findfreelancerapp_ui/widgets/slidejob.dart';
import 'package:findfreelancerapp_ui/widgets/titlesection.dart';
import 'package:flutter/material.dart';
import 'package:findfreelancerapp_ui/constants/constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 375,
          height: 812,
          color: redColor,
          child: Column(
            children: [
              Container(
                //header (Searchbar,filter)
                height: 81,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SearchBar(),
                    SizedBox(width: 16),
                    Filter(),
                  ],
                ),
              ),
              TitleSection(
                title: 'Cari\nFreelancer',
                description:
                    'Selesaikan pekerjaan\ndengan talenta\nterbaik di bidangnya',
                image: 'assets/img_cover.png',
              ),
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
                      SingleChildScrollView(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 24),
                              Text(
                                'Paling Banyak Dicari',
                                style: subtitleTextStyle,
                              ),
                              SizedBox(height: 24),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    SlideJob(
                                      title: 'Programmer',
                                      description: '256 Programmer',
                                      image: 'assets/slide1.png',
                                    ),
                                    SizedBox(width: 15.99),
                                    SlideJob(
                                      title: 'UI/UX Designer',
                                      description: '120 Designer',
                                      image: 'assets/slide1.png',
                                    ),
                                    SizedBox(width: 15.99),
                                    SlideJob(
                                      title: 'Sosmed',
                                      description: '67 Designer',
                                      image: 'assets/slide1.png',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Top Freelancer',
                                style: subtitleTextStyle,
                              ),
                              Text(
                                'Lihat Semua',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: redColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24),
                          FreelancerProfileReview(
                            imageProfile: 'assets/iconprofile1.png',
                            name: 'Andrea Hutama Karya',
                            profession: 'Programmer',
                            rating: '4.9',
                            location: 'Bandung',
                            fee: '\$55/hr',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Divider(),
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

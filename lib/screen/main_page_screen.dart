import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rent_servise/common/text_field.dart';
import 'package:rent_servise/screen/detail_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../common/constants/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myCurrentIndex = 0;
  int? selectIndex = 0;
  int value=0;
  ScrollController? controller;
  PageController  _controller=PageController();

  void changeColor(int val) {
    setState(() {
      selectIndex = val;
    });
  }
  PageController abc = PageController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on_outlined,
                      color: comColor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_outlined,
                      color: comColor,
                    )),
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: CommonTextField(
                        hinttext: '',
                        icon: const Icon(CupertinoIcons.search),
                      ),
                    ),
                    CarouselSlider(
                      items: [
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/mainImage/h.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/mainImage/h.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/mainImage/h.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          height: 164,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 500),
                          autoPlayInterval: const Duration(seconds: 8),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          viewportFraction: 1,
                          pageSnapping: false,
                          enlargeCenterPage: true,
                          onPageChanged: (val, reson) {
                            setState(() {
                              myCurrentIndex = val;
                            });
                          }),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: myCurrentIndex,
                      count: 3,
                      effect: const SlideEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 10,
                          activeDotColor: comColor,
                          paintStyle: PaintingStyle.fill),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      changeColor(0);
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: selectIndex == 0 ? comColor : Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: comColor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 12,
                            backgroundImage:
                                AssetImage('assets/mainImage/image2.png'),
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 17,
                              color: selectIndex == 0
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      changeColor(1);
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: selectIndex == 1 ? comColor : Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: comColor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 12,
                            backgroundImage:
                                AssetImage('assets/mainImage/office.png'),
                          ),
                          Text(
                            "Office",
                            style: TextStyle(
                              fontSize: 17,
                              color: selectIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      changeColor(2);
                    },
                    child: Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        color: selectIndex == 2 ? comColor : Colors.white,
                        shape: BoxShape.rectangle,
                        border: Border.all(color: comColor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const CircleAvatar(
                            radius: 12,
                            backgroundImage:
                                AssetImage('assets/mainImage/flat.png'),
                          ),
                          Text(
                            "Flat",
                            style: TextStyle(
                              fontSize: 17,
                              color: selectIndex == 2
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding, top: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Features Properties",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 19,
                          fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(
                          color: comColor,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 249,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            height: 249,
                            width: 265,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 141,
                                        width: 250,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/mainImage/Rectangle.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Colors.white54,
                                        child: Icon(Icons.favorite_border,size: 20,color: Colors.black45,),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Duplex Apartment",
                                        style: TextStyle(
                                            fontSize: 13, letterSpacing: 1),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star_border,
                                            size: 12,
                                          ),
                                          Text("4.5",
                                              style: TextStyle(fontSize: 16))
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 11,
                                          ),
                                          Text(
                                            "61/106-107, Rajat Path,\nSector 5, Mansarovar",
                                            style: TextStyle(fontSize: 6),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.home_work_outlined,
                                            size: 9,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "1800 SQ FT",
                                            style: TextStyle(fontSize: 8),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            height: 11,
                                            width: 23,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: comColor),
                                            child: const Center(
                                                child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.white),
                                            )),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            height: 11,
                                            width: 23,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: comColor),
                                            child: const Center(
                                                child: Text(
                                              "Rent",
                                              style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.bed,
                                            size: 9,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4",
                                            style: TextStyle(fontSize: 6),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Icon(
                                            Icons.bathtub_outlined,
                                            size: 7,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(fontSize: 6),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(' ₹ 12,500 mo.',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: defaultPadding, top: defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Latest Properties",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 19,
                          fontWeight: FontWeight.w800),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "View all",
                        style: TextStyle(
                          color: comColor,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 249,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    controller:abc,


                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){

                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
                        },

                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Container(
                            height: 249,
                            width: 265,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 141,
                                        width: 250,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(4),
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/mainImage/Rectangle.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      CircleAvatar(
                                        radius: 18,
                                        backgroundColor: Colors.white54,
                                        child: Icon(Icons.favorite_border,size: 20,color: Colors.black45,),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "Duplex Apartment",
                                        style: TextStyle(
                                            fontSize: 13, letterSpacing: 1),
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.star_border,
                                            size: 12,
                                          ),
                                          Text("4.5",
                                              style: TextStyle(fontSize: 16))
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.location_on_outlined,
                                            size: 11,
                                          ),
                                          Text(
                                            "61/106-107, Rajat Path,\nSector 5, Mansarovar",
                                            style: TextStyle(fontSize: 6),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Icon(
                                            Icons.home_work_outlined,
                                            size: 9,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          Text(
                                            "1800 SQ FT",
                                            style: TextStyle(fontSize: 8),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            height: 11,
                                            width: 23,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: comColor),
                                            child: const Center(
                                                child: Text(
                                              "Buy",
                                              style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.white),
                                            )),
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Container(
                                            height: 11,
                                            width: 23,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: comColor),
                                            child: const Center(
                                                child: Text(
                                              "Rent",
                                              style: TextStyle(
                                                  fontSize: 6,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.bed,
                                            size: 9,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "4",
                                            style: TextStyle(fontSize: 6),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Icon(
                                            Icons.bathtub_outlined,
                                            size: 7,
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(fontSize: 6),
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  const Text(' ₹ 12,500 mo.',
                                      style: TextStyle(fontSize: 14))
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 10,),
              Center(
                child: SmoothPageIndicator(
                    controller: abc,
                    count: 5,
                    effect: const SlideEffect(
                        dotHeight: 4,
                        dotWidth: 20,
                        spacing: 10,
                        activeDotColor: comColor,
                        paintStyle: PaintingStyle.fill),),
              ),
            SizedBox(height: defaultPadding,)
            ],
          ),
        ),
      ),
    );
  }
}

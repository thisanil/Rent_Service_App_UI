import 'package:flutter/material.dart';
import 'package:rent_servise/common/text_field.dart';

import '../common/constants/constants.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int? selectIndex = 0;
  int? selectIndex1 = 0;
  int? selectIndex2 = 0;
  int? selectIndex3 = 0;
  int? selectIndex4 = 0;

  void changeColor(int val) {
    setState(() {
      selectIndex = val;
    });
  }

  void changeColor1(int val) {
    setState(() {
      selectIndex1 = val;
    });
  }

  void changeColor2(int val) {
    setState(() {
      selectIndex2 = val;
    });
  }

  void changeColor3(int val) {
    setState(() {
      selectIndex3 = val;
    });
  }

  void changeColor4(int val) {
    setState(() {
      selectIndex4 = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFFFFF), Color(0xFFCFECDF)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Filter",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        changeColor(0);
                      },
                      child: Container(
                        height: 36,
                        width: 165,
                        decoration: BoxDecoration(
                          color: selectIndex == 0 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Buy",
                            style: TextStyle(
                              fontSize: 17,
                              color:
                                  selectIndex == 0 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor(1);
                      },
                      child: Container(
                        height: 36,
                        width: 165,
                        decoration: BoxDecoration(
                          color: selectIndex == 1 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Rent",
                            style: TextStyle(
                              fontSize: 17,
                              color:
                                  selectIndex == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        changeColor1(0);
                      },
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: selectIndex1 == 0 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 13,
                              color:
                                  selectIndex1 == 0 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor1(1);
                      },
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: selectIndex1 == 1 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Office",
                            style: TextStyle(
                              fontSize: 13,
                              color:
                                  selectIndex1 == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor1(2);
                      },
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: selectIndex1 == 2 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Building",
                            style: TextStyle(
                              fontSize: 13,
                              color:
                                  selectIndex1 == 2 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor1(3);
                      },
                      child: Container(
                        height: 30,
                        width: 75,
                        decoration: BoxDecoration(
                          color: selectIndex1 == 3 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Hotel",
                            style: TextStyle(
                              fontSize: 13,
                              color:
                                  selectIndex1 == 3 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                  "City",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                  child: SizedBox(
                    height: 50,
                    width: 343,
                    child: CommonTextField(
                      hinttext: 'Enter City',
                      reduis: 6,
                    ),
                  ),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        changeColor2(0);
                      },
                      child: Container(
                        height: 36,
                        width: 165,
                        decoration: BoxDecoration(
                          color: selectIndex2 == 0 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Commercial",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  selectIndex2 == 0 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor2(1);
                      },
                      child: Container(
                        height: 36,
                        width: 165,
                        decoration: BoxDecoration(
                          color: selectIndex2 == 1 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Residential",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  selectIndex2 == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                const Text(
                  "Price",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        changeColor3(0);
                      },
                      child: Container(
                        height: 36,
                        width: 165,
                        decoration: BoxDecoration(
                          color: selectIndex3 == 0 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "Low to high",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  selectIndex3 == 0 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor3(1);
                      },
                      child: Container(
                        height: 36,
                        width: 165,
                        decoration: BoxDecoration(
                          color: selectIndex3 == 1 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            "High to low",
                            style: TextStyle(
                              fontSize: 16,
                              color:
                                  selectIndex3 == 1 ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                  "Ratings",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        changeColor4(0);
                      },
                      child: Container(
                        height: 31,
                        width: 76,
                        decoration: BoxDecoration(
                          color: selectIndex4 == 0 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: selectIndex4 == 0 ? Colors.white : comColor,
                              size: 16,
                            ),
                            Text(
                              "4.1",
                              style: TextStyle(
                                fontSize: 16,
                                color: selectIndex4 == 0
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor4(1);
                      },
                      child: Container(
                        height: 31,
                        width: 76,
                        decoration: BoxDecoration(
                          color: selectIndex4 == 1 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: selectIndex4 == 1 ? Colors.white : comColor,
                              size: 16,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                fontSize: 16,
                                color: selectIndex4 == 1
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor4(2);
                      },
                      child: Container(
                        height: 31,
                        width: 76,
                        decoration: BoxDecoration(
                          color: selectIndex4 == 2 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: selectIndex4 == 2 ? Colors.white : comColor,
                              size: 16,
                            ),
                            Text(
                              "4.8",
                              style: TextStyle(
                                fontSize: 16,
                                color: selectIndex4 == 2
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeColor4(3);
                      },
                      child: Container(
                        height: 31,
                        width: 76,
                        decoration: BoxDecoration(
                          color: selectIndex4 == 3 ? comColor : Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: comColor),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.star,
                              color: selectIndex4 == 3 ? Colors.white : comColor,
                              size: 16,
                            ),
                            Text(
                              "5.0",
                              style: TextStyle(
                                fontSize: 16,
                                color: selectIndex4 == 3
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding * 2,
                ),
                SizedBox(
                  height: 49,
                  width: 343,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: comColor,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Apply Now",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_servise/common/constants/constants.dart';
import 'package:rent_servise/screen/producat_item.dart';

import '../common/product.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 306,
                width: 356,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage('assets/image/gh.png'),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "45.5 Lac - 2 BHK Flat",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.favorite_border,
                        color: comColor,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Color(0xFFFCC201),
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4.9",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "4ATS Happy Trails",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.home_work_outlined,
                            color: Colors.black54,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "1800 SQ FT",
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Icons.bed, size: 12, color: Color(0xFFFCC201)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4",
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.bathtub_outlined,
                              size: 12, color: Color(0xFFFCC201)),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "2",
                            style: TextStyle(fontSize: 9),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("61/106-107, Rajat Path,\n Sector 5, Mansarovar",style: TextStyle(fontSize: 15,),),
                  Icon(Icons.location_on_outlined,color: Colors.black45,size: 18,)
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Duplex Apartmen",style: TextStyle(fontSize: 18,),),
                  Row(

                    children: [
                      InkWell(
                        child: Container(
                          height: 23,
                          width: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: comColor
                          ),

                          child:Icon(Icons.email_outlined,color: Colors.white,size: 15,),

                        ),
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                        child: Container(
                          height: 23,
                          width: 26,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red
                          ),

                          child:Center(child: Icon(Icons.phone,color: Colors.white,size: 15,)),

                        ),
                      ),

                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Description",style: TextStyle(fontSize: 16),),
              const SizedBox(height: 10,),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n"
                  "Nullam ultrices nec libero eu dignissim. Aenean eu lorem"
                  "odio. Fusce pharetra lacinia augue non consectetur. ",style: TextStyle(fontSize: 12,wordSpacing: 5),),

              const SizedBox(height: defaultPadding,),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 10,),
              Text('ACL Love Home Joypur Overview',style: TextStyle(fontSize: 16),),
             Container(
               height: 350,

               child: GridView.count(
                 physics: NeverScrollableScrollPhysics(),
                   crossAxisCount: 3,
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,
                 childAspectRatio: 1.2,
                 children:List.generate(demo_profduct.length, (index) =>ProductItem(product: demo_profduct[index]),
                 
                 )

               ),
             ),
              // SizedBox(height: defaultPadding,),
              Text('Facilities',style: TextStyle(fontSize: 16),),
              Container(
                height: 200,

                child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.2,
                    children:List.generate(6, (index) =>Column(
                      children: [
                        Image.asset(
                         'assets/icons/id.png',
                          width: 36,
                          height: 36,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Refrigerator',
                          style: const TextStyle(fontSize: 15),
                        ),

                      ],
                    ),

                    )

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

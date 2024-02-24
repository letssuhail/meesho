import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meesho/components/homescreenproductgrid.dart';
import 'package:meesho/components/homeslider.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductForYoulist = [
    'All',
    'Tshirts',
    'Shirts',
    'Kurta Sets',
    'Dresses',
    'Tops',
    'Skirts'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEAEAF3),
        body: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 13, right: 10, bottom: 10, top: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                            // child: Icon(Icons.person),
                          ),
                          10.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              'Wellcome Meesho'
                                  .text
                                  .fontWeight(FontWeight.bold)
                                  .make(),
                              'test user'
                                  .text
                                  .fontWeight(FontWeight.w600)
                                  .make(),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.favorite,
                              color: Colors.red, size: 25),
                          7.widthBox,
                          const Icon(
                            Icons.notifications,
                            color: Colors.amber,
                            size: 25,
                          ),
                          7.widthBox,
                          Stack(
                            children: [
                              const Icon(
                                Icons.shopping_cart,
                                size: 25,
                                color: Colors.purple,
                              ),
                              Positioned(
                                  right: 0,

                                  // top: 0,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFCE7FB),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: '1'
                                        .text
                                        .color(Colors.purple)
                                        .fontWeight(FontWeight.w500)
                                        .makeCentered(),
                                  ))
                            ],
                          ),
                        ],
                      ),
                      15.heightBox,
                      Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // color: Colors.grey,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffB1B1C1))),
                          child: Row(
                            children: [
                              10.widthBox,
                              Row(
                                children: [
                                  const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                  4.widthBox,
                                  'Search bhy Keyword or Product ID'
                                      .text
                                      .size(13)
                                      .color(
                                        Colors.grey,
                                      )
                                      .make()
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.mic,
                                    color: Colors.grey,
                                  ),
                                  10.widthBox,
                                  const Icon(
                                    Icons.camera_alt,
                                    color: Colors.grey,
                                  ),
                                  10.widthBox,
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ).backgroundColor(Colors.white),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          10.widthBox,
                          const Icon(
                            Icons.location_on,
                            color: Color(0xff90B1FB),
                          ),
                          'Deliverying to '.text.size(13).make(),
                          'Rampur - '
                              .text
                              .size(13)
                              .fontWeight(FontWeight.w500)
                              .make(),
                          '244924'
                              .text
                              .size(13)
                              .fontWeight(FontWeight.w500)
                              .make(),
                          3.widthBox,
                          const Icon(
                            Icons.arrow_forward_ios,
                            size: 14,
                          ),
                        ],
                      )
                          .box
                          .height(40)
                          .margin(EdgeInsets.only(bottom: 10))
                          .color(const Color(0xffF8F8FF))
                          .make(),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            children: List.generate(
                              2, // Number of rows
                              (rowIndex) => Row(
                                children: List.generate(
                                  10, // Number of items in each row
                                  (colIndex) => GestureDetector(
                                    onTap: () {
                                      // print(colIndex);
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SvgPicture.asset(
                                        'assets/categoriesimages/Kurta&Dresses.svg',
                                        width: 60.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                      10.heightBox,
                      MyImageSlider(),
                      12.heightBox,
                    ],
                  ).backgroundColor(Colors.white),
                  8.heightBox,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            10.heightBox,
                            // SvgPicture.asset('assets/logo/trendzlogo.svg', width: 50,)
                            'Bestselling Products'
                                .text
                                .fontWeight(FontWeight.bold)
                                .make(),
                            10.heightBox,

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    9,
                                    (index) => Container(
                                          height: 125,
                                          width: 105,
                                          margin: EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                              // color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: SvgPicture.asset(
                                                  'assets/images/bestselligproductcategoryimages/cottonkurtis.svg')),
                                        )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ).backgroundColor(Colors.white),
                  5.heightBox,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 13, bottom: 10, right: 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 10.heightBox,

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SvgPicture.asset(
                                    'assets/logo/stargold.svg',
                                    width: 60,
                                  ),
                                ),
                                Row(
                                  children: [
                                    "VIEW ALL"
                                        .text
                                        .fontWeight(FontWeight.bold)
                                        .color(
                                          Color(0xff582244),
                                        )
                                        .make(),
                                    const Icon(
                                      Icons.arrow_forward_ios_outlined,
                                      color: Colors.purple,
                                      size: 15,
                                    )
                                  ],
                                )
                              ],
                            ),
                            // Row(
                            //   children: [
                            //     'Special Collection'.text.fontWeight(FontWeight.w600).make(),
                            //     10.widthBox,
                            //     'Trusted Quality'.text.fontWeight(FontWeight.w600).make(),
                            //     ],
                            // ),
                            10.heightBox,

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    9,
                                    (index) => Container(
                                          height: 125,
                                          width: 105,
                                          margin:
                                              const EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                              // color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: SvgPicture.asset(
                                                  'assets/images/bestselligproductcategoryimages/cottonkurtis.svg')),
                                        )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ).backgroundColor(const Color(0xffFFEFC9)),
                  10.heightBox,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            10.heightBox,
                            // SvgPicture.asset('assets/logo/trendzlogo.svg', width: 50,)
                            'Low Price Store'
                                .text
                                .fontWeight(FontWeight.bold)
                                .make(),
                            10.heightBox,

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    9,
                                    (index) => Container(
                                          height: 125,
                                          width: 105,
                                          margin: EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                              // color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: SvgPicture.asset(
                                                  'assets/images/bestselligproductcategoryimages/cottonkurtis.svg')),
                                        )),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ).backgroundColor(Colors.white),
                  2.heightBox,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                'Products For You'
                                    .text
                                    .fontWeight(FontWeight.bold)
                                    .make()
                              ],
                            ).box.height(50).make(),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Row(
                            children: List.generate(
                                ProductForYoulist.length,
                                (index) => Container(
                                      height: 30,
                                      margin: const EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        // color: Colors.amber,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Colors.purple),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 14, right: 14),
                                        child: ProductForYoulist[index]
                                            .text
                                            .color(Colors.purple)
                                            .fontWeight(FontWeight.w500)
                                            .makeCentered(),
                                      ),
                                    )),
                          ),
                        ),
                      ),
                      10.heightBox,
                      const HomeProductGrid()
                    ],
                  ).backgroundColor(Colors.white),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

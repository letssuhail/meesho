import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyImageSlider extends StatefulWidget {
  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  List<Map<String, dynamic>> imageList = [
    {
      "id": 1,
      "image_path":
          'https://img.freepik.com/free-photo/photocomposition-horizontal-shopping-banner-with-woman-big-smartphone_23-2151201773.jpg?w=740&t=st=1708098523~exp=1708099123~hmac=cd463fe25b35987e80e01a60df511bc993f71dfedb9594b094682491db9cb40e'
    },
    {
      "id": 2,
      "image_path":
          'https://img.freepik.com/free-photo/photocomposition-horizontal-shopping-banner-with-woman-big-smartphone_23-2151201773.jpg?w=740&t=st=1708098523~exp=1708099123~hmac=cd463fe25b35987e80e01a60df511bc993f71dfedb9594b094682491db9cb40e'
    },
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imageList
              .map(
                (item) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      item['image_path'].toString(),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              )
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            autoPlay: true,
            aspectRatio: 2.4,
            viewportFraction: .93,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            final int index = entry.key;
            return GestureDetector(
              onTap: () => carouselController.animateToPage(index),
              child: Container(

                width: currentIndex == index ? 15 : 10,
                height: 5,
                margin: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == index ? Color(0xffA14889) : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

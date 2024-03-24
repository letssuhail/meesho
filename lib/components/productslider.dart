import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatefulWidget {
  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  List<Map<String, dynamic>> imageList = [
    {
      "id": 1,
      "image_path":
          'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/26358796/2023/12/11/8ff2dd0a-1077-4234-b4d1-907435e3a2061702278967979MarksSpencerWomenPurpleNightsuit1.jpg'
    },
    {
      "id": 2,
      "image_path":
          'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/26358796/2023/12/11/9be7f93f-5887-4065-b4f4-4aa8ba7633881702278967962MarksSpencerWomenPurpleNightsuit2.jpg'
    },
    {
      "id": 3,
      "image_path":
          'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/26358796/2023/12/11/ffd6e1ce-cbc5-438d-9e3c-9ecfda79460e1702278967954MarksSpencerWomenPurpleNightsuit4.jpg'
    },
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return
      Column(
      children: [
        CarouselSlider(
          items: imageList
              .map(
                (item) => Image.network(
                    item['image_path'].toString(),
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
              )
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            autoPlay: true,
            aspectRatio: 9/12,
            viewportFraction:1,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
       const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            final int index = entry.key;
            return GestureDetector(
              onTap: () => carouselController.animateToPage(index),
              child: Container(
                width: currentIndex == index ? 17 : 17,
                height: 5,
                margin: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == index ? const  Color(0xff582244) : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

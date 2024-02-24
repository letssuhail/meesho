import 'package:flutter/material.dart';
import 'package:meesho/components/productslider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:intl/intl.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.teal,
        actions: [
          const Icon(
            Icons.search,
            color: Colors.blue,
            size: 30,
          ),
          6.widthBox,
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30,
          ),
          6.widthBox,
          Icon(
            Icons.shopping_cart,
            color: Colors.purple,
            size: 30,
          ),
          10.widthBox,
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductSlider(),
          Padding(
            padding: const EdgeInsets.only(left: 13, top: 5, right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "product title"
                    .text
                    .fontWeight(FontWeight.bold)
                    .size(15)
                    .make(),
                "product description.......".text.make(),
                3.heightBox,
                Row(
                  children: [
                    'MRP'.text.color(Colors.grey).make(),
                    3.widthBox,
                    Text(
                      NumberFormat.simpleCurrency(
                              locale: 'hi-IN', decimalDigits: 0)
                          .format(100),
                      style: const TextStyle(color: Colors.grey),
                    ),
                    3.widthBox,

                    Text(
                      NumberFormat.simpleCurrency(
                              locale: 'hi-IN', decimalDigits: 0)
                          .format(100),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    5.widthBox,
                    '(76% OFF)'
                        .text
                        .color(Color.fromARGB(255, 255, 119, 0))
                        .size(10).fontWeight(FontWeight.bold)
                        .make(),
                  ],
                ),
                10.heightBox,
                "Colour Pink".text.fontWeight(FontWeight.bold).make(),
              ],
            ),
          ),
          8.heightBox,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: List.generate(
                    10,
                    (index) => Container(
                          height: 85,
                          width: 65,
                          // color: Colors.teal,

                          margin: EdgeInsets.only(right: 8),
                          child: ClipRRect(
                            // borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/26358796/2023/12/11/8ff2dd0a-1077-4234-b4d1-907435e3a2061702278967979MarksSpencerWomenPurpleNightsuit1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

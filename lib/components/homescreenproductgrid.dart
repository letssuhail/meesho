import 'package:flutter/material.dart';
import 'package:meesho/productdetailpage/productdetailscreen.dart';
import 'package:velocity_x/velocity_x.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class HomeProductGrid extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const HomeProductGrid({Key? key});

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 320,
        crossAxisSpacing: 1,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: Image.network(
                      'https://assets.myntassets.com/f_webp,fl_progressive/h_960,q_80,w_720/v1/assets/images/26358796/2023/12/11/8ff2dd0a-1077-4234-b4d1-907435e3a2061702278967979MarksSpencerWomenPurpleNightsuit1.jpg',
                      fit: BoxFit.cover,
                    )),
                Positioned(
                    right: 4,
                    top: 4,
                    child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.6),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black87,
                          size: 20,
                        )))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Libas".text.fontWeight(FontWeight.w500).make(),
                  2.heightBox,
                  "Women Green Pure Cotton Kurta with Palazzos & With Dupatta"
                      .text
                      .size(13)
                      .color(Colors.grey)
                      .overflow(TextOverflow
                          .ellipsis) // Specify the overflow property to handle long text
                      .make(),
                  Text(
                    NumberFormat.simpleCurrency(
                            locale: 'hi-IN', decimalDigits: 0)
                        .format(100),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      '7% OFF'
                          .text
                          .color(Color.fromARGB(255, 255, 119, 0))
                          .size(10)
                          .make(),
                      Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff44BC75),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [4.5.text.white.fontWeight(FontWeight.bold).make(),
                            3.widthBox,
                            Icon(Icons.star, size: 14,color: Colors.white,)],
                        ),
                      )
                    ],
                  )

                  // Row(
                  //   children: [
                  //     Text(
                  //       NumberFormat.simpleCurrency(locale: 'hi-IN', decimalDigits: 0)
                  //           .format(100),
                  //       style: const TextStyle(fontWeight: FontWeight.bold),
                  //     ),
                  //     4.widthBox,
                  //     Text(
                  //       NumberFormat.simpleCurrency(locale: 'hi-IN', decimalDigits: 0)
                  //           .format(100),
                  //       style: const TextStyle(color: Colors.grey),
                  //     ),
                  //     4.widthBox,
                  //     '7% OFF'
                  //         .text
                  //         .color(Color.fromARGB(255, 255, 119, 0))
                  //         .size(10)
                  //         .make()
                  //   ],
                  // ), // Row(
                  //   children: [
                  //     Text(
                  //       NumberFormat.simpleCurrency(locale: 'hi-IN', decimalDigits: 0)
                  //           .format(100),
                  //       style: const TextStyle(fontWeight: FontWeight.bold),
                  //     ),
                  //     4.widthBox,
                  //     Text(
                  //       NumberFormat.simpleCurrency(locale: 'hi-IN', decimalDigits: 0)
                  //           .format(100),
                  //       style: const TextStyle(color: Colors.grey),
                  //     ),
                  //     4.widthBox,
                  //     '7% OFF'
                  //         .text
                  //         .color(Color.fromARGB(255, 255, 119, 0))
                  //         .size(10)
                  //         .make()
                  //   ],
                  // ),
                ],
              ),
            ),

            // "name".text.make(),
            // "name".text.make(),
          ],
        ).onTap(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductDetailScreen()));
          print(index);
        });
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../../data/products.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5b0b0b).withOpacity(0.75),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4, // spacing between rows
              crossAxisSpacing: 4.0, // spacing between columns
            ),
            itemBuilder: (context, index) {
              return SizedBox(
                  height: 230,
                  width: 180,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                        color: Color(0xffbcb37b),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/Pngtreewine.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "product name",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffFFFFFF)),
                          ),
                          Text(
                            "Price",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFFFFFF)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/images/add-to-wishlist-icon.svg',
                                  height: 20,
                                  width: 20,
                                ),
                                color: Color(0xffFFFFFF),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  'assets/images/add-item-in-cart-icon.svg',
                                  height: 20,
                                  width: 20,
                                ),
                              )
                            ],
                          )
                        ]),
                  ));
            }),
      ),
    );
  }
}

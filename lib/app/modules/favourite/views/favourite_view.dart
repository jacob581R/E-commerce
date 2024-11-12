import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/favourite_controller.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
              height: 100,
              width: 360,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffbcb37b),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/intro1.jpg',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'product name',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                        ),
                        Text(
                          'product name',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/images/close-circle-svgrepo-com.svg',
                            height: 25,
                            width: 25,
                          ),
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
                  ],
                ),
              )),
          SizedBox(
            height: 8,
          ),
          SizedBox(
              height: 100,
              width: 360,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffbcb37b),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/intro1.jpg',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'product name',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                        ),
                        Text(
                          'product name',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/images/close-circle-svgrepo-com.svg',
                            height: 25,
                            width: 25,
                          ),
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
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}

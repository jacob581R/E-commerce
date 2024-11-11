import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffbcb37b).withOpacity(0.5),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Basket",
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 24.0,
            ),

            // the cart item
            Container(
              width: size.width * 1,
              height: 188,
              decoration: BoxDecoration(
                  color: Color(0xff790000).withOpacity(0.75),
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                children: [
                  // the product image on the left
                  Image.asset(
                    'assets/images/Pngtreewine.png',
                    width: 149,
                    height: 149,
                  ),
                  // the product details
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Product Name",
                            style: TextStyle(
                                color: Color(0xffbcb37b),
                                fontWeight: FontWeight.w600,
                                fontSize: 12),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.cancel_outlined),
                            color: Color(0xffFFFFFF),
                            iconSize: 32,
                          )
                        ],
                      ),
                      Text(
                        "Unit Price : 500",
                        style: TextStyle(
                            color: Color(0xffbcb37b),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "QTY: 2",
                            style: TextStyle(
                                color: Color(0xffbcb37b),
                                fontWeight: FontWeight.w600,
                                fontSize: 14),
                          ),
                          SizedBox(
                            width: 64,
                          ),
                          // the Quntity counter
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(
                                    AssetImage('assets/images/add.png')),
                                color: Color(0xffFFFFFF),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: ImageIcon(AssetImage(
                                    'assets/images/minus-circle.png')),
                                color: Color(0xffFFFFFF),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

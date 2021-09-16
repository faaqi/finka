import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/Checkout/checkout_screen.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.h,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.cancel,
                  size: 10.w,
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Basket',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 60.h,
                child: ListView.builder(
                    itemCount: 10,
                    padding: EdgeInsets.all(0),
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 2.w,
                            vertical: 0.h,
                          ),
                          child: Container(
                            height: 14.h,
                            child: Row(
                              children: [
                                Container(
                                  width: 20.w,
                                  height: 20.w,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.w)),
                                    color: Colors.white,
                                  ),
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2.w)),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZMlebRV1-hRbb1mrmtWTUOan-CrqwFsjX1w&usqp=CAU",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Dinner with a view",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.delete_forever,
                                              color: Colors.red,
                                              size: 7.w,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$ 25.00",
                                          style: TextStyle(
                                            color: purpleColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Payment",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10.sp,
                                                color: purpleColor,
                                              ),
                                            ).paddingOnly(
                                              left: 5.w,
                                              bottom: 0.5.h,
                                            ),
                                            Container(
                                              width: 30.w,
                                              padding: EdgeInsets.symmetric(
                                                vertical: 0.5.h,
                                                horizontal: 2.w,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(7.w)),
                                                color: Colors.grey[200],
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          if (val != 0) {
                                                            val--;
                                                          }
                                                        });
                                                      },
                                                      child: Icon(
                                                        Icons.remove,
                                                        color: purpleColor,
                                                      )),
                                                  Spacer(),
                                                  Text(
                                                    '$val',
                                                    style: TextStyle(
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          val++;
                                                        });
                                                      },
                                                      child: Icon(
                                                        Icons.add,
                                                        color: purpleColor,
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '\$ 87.00',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton2(
                title: "PROCEED TO CHECKOUT",
                height: 6.h,
                width: 100.w,
                color: purpleColor,
                fontWeight: FontWeight.bold,
                onpress: () {
                  Get.to(() => CheckoutScreen());
                },
                hMargin: 0.0,
                borderRadius: 10.w,
                textColor: Colors.white,
                fontSize: 12.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

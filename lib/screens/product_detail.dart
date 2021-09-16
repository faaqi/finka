import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/Cart/cart.dart';
import 'package:Kollektivet/screens/Checkout/checkout_screen.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool fvrt = false;

  int val = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.h,
              ),
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 7.w,
                  ),
                ),
                title: Padding(
                  padding: EdgeInsets.only(
                    left: 17.w,
                  ),
                  child: Text(
                    'Search results',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3.w)),
                ),
                height: 26.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(3.w)),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1576201836106-db1758fd1c97?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 1.h,
                        ),
                        decoration: BoxDecoration(
                          color: lightPinkColour,
                          borderRadius: BorderRadius.all(Radius.circular(5.w)),
                        ),
                        child: Text(
                          'SDG',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 10.sp,
                          ),
                        )),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.w,
                          vertical: 1.h,
                        ),
                        decoration: BoxDecoration(
                          color: lightGreenColour.withOpacity(0.5),
                          borderRadius: BorderRadius.all(Radius.circular(5.w)),
                        ),
                        child: Text(
                          'Outdoors',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 10.sp,
                          ),
                        )),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          fvrt = !fvrt;
                        });
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: fvrt ? purpleColor : Colors.grey[400],
                        size: 8.w,
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Lama with a view',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 22.sp,
                ),
              ).paddingOnly(
                left: 6.w,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Superprimer™ Face Primers',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 11.sp,
                  color: Colors.grey,
                ),
              ).paddingOnly(
                left: 6.w,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Clinique is not cruelty-free. They may test on animals, either themselves, or through a third party. Brands who fall under this category could also be selling products where animal testing is required by law.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                  color: Colors.grey,
                ),
              ).paddingSymmetric(
                horizontal: 6.w,
              ),
              SizedBox(
                height: 2.h,
              ),
              Divider(
                thickness: 1,
              ).paddingSymmetric(
                horizontal: 8.w,
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Container(
                    width: 40.w,
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      itemSize: 7.w,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      glow: true,
                      itemPadding: EdgeInsets.symmetric(
                        horizontal: 0.1.w,
                      ),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: 45.w,
                      ),
                      Container(
                        width: 10.w,
                        height: 10.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 0.5.w,
                              color: Colors.white,
                            ),
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrjdA_7ae3VLSVlZ3iUyJDek_s-6HU3uc7xA&usqp=CAU"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        left: 7.w,
                        child: Container(
                          width: 10.w,
                          height: 10.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5.w,
                                color: Colors.white,
                              ),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRszda3pIo8Ok9iYPjbSNgE5fdnHX12tOB7gg&usqp=CAU"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                        left: 14.w,
                        child: Container(
                          width: 10.w,
                          height: 10.w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.5.w,
                                color: Colors.white,
                              ),
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQaTFuu20gtqhbanN3GA9NJMHQ1gAAva60tg&usqp=CAU"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Positioned(
                        top: 0.5.h,
                        left: 22.w,
                        child: Container(
                          width: 20.w,
                          height: 8.w,
                          child: Center(
                            child: Text(
                              '68 Reviews',
                              style: TextStyle(
                                fontSize: 9.sp,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.w)),
                            color: cardBgColour,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 5.w,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Leave a review",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
              ).paddingSymmetric(
                horizontal: 6.w,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Members",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: purpleColor,
                        ),
                      ).paddingOnly(
                        left: 5.w,
                        bottom: 0.5.h,
                      ),
                      Container(
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(7.w)),
                          color: Colors.grey[200],
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              '$val',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (val != 0) {
                                      val--;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: purpleColor,
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    val++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: purpleColor,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "SUB TOTAL",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11.sp,
                        ),
                      ).paddingOnly(
                        bottom: 1.h,
                      ),
                      Text(
                        "\$ 130.00",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: purpleColor,
                        ),
                      )
                    ],
                  ),
                ],
              ).paddingSymmetric(
                vertical: 2.h,
                horizontal: 5.w,
              ),
              Row(
                children: [
                  CustomButton2(
                    title: "ADD TO CART",
                    height: 6.h,
                    width: 70.w,
                    color: purpleColor,
                    fontWeight: FontWeight.bold,
                    onpress: () {
                      Get.to(() => Cart());
                    },
                    hMargin: 0.0,
                    borderRadius: 10.w,
                    textColor: Colors.white,
                    fontSize: 12.sp,
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(2.5.w),
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(3.w),
                      ),
                    ),
                    width: 11.5.w,
                    height: 11.5.w,
                    child: Image.asset("assets/icon/send_icon.png"),
                  ),
                ],
              ).paddingSymmetric(
                horizontal: 5.w,
                vertical: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

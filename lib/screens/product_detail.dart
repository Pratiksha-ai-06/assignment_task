import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:impactsolution/widgets/common_button.dart';
import 'package:impactsolution/widgets/common_container.dart';
import 'package:impactsolution/widgets/common_textfield.dart';

class ProductDetail extends StatefulWidget {
  final String image;
  final dynamic index;
  final String name;
  final String price;
  const ProductDetail(
      {super.key,
      required this.image,
      required this.index,
      required this.name,
      required this.price});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                  top: 20,
                  left: 50,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
              Positioned(
                top: 20,
                left: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: mediaquery.size.height * 0.04,
                      width: mediaquery.size.width * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.grey),
                      child: Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: mediaquery.size.height * 0.04,
                      width: mediaquery.size.width * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.grey),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: mediaquery.size.height * 0.04,
                      width: mediaquery.size.width * 0.09,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.grey),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 30,
                left: 50,
                child: CommonContainer(
                  icon: Icons.star,
                  hintText: "4.6",
                ),
              ),
            ],
          ),
          ListTile(
            title: Text(
              widget.name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.favorite_border_outlined),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.price,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "25% off",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Inclusive of all taxes",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    "Available Options ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ],
              ),
              Row(
                children: [
                  CommonButton(
                    height: 50,
                    width: 180,
                    color: Colors.green,
                    broder: Border.all(color: Colors.green),
                    hintText: "Add to Bag",
                    backgroundColor: Colors.green,
                  ),
                  CommonButton(
                    height: 50,
                    width: 180,
                    color: Colors.green,
                    broder: Border.all(color: Colors.green),
                    hintText: "Wishlist",
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Selected Size : XS ",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    "Sized chart ",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CommonContainer(
                    color: Colors.grey,
                    hintText: "XS",
                    width: 40,
                    height: 40,
                  ),
                  CommonContainer(
                    color: Colors.grey,
                    hintText: "S",
                    width: 40,
                    height: 40,
                  ),
                  CommonContainer(
                    color: Colors.grey,
                    hintText: "M",
                    width: 40,
                    height: 40,
                  ),
                  CommonContainer(
                    color: Colors.grey,
                    hintText: "L",
                    width: 40,
                    height: 40,
                  ),
                  CommonContainer(
                    color: Colors.grey,
                    hintText: "XL",
                    width: 40,
                    height: 40,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery and services",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  Row(
                    children: [
                      CommonButton(
                        height: 50,
                        width: 180,
                        hintText: "Enter Pincode",
                        color: Colors.green,
                      ),
                      Spacer(),
                      CommonButton(
                        height: 50,
                        width: 100,
                        hintText: "Verify",
                        color: Colors.green,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Product Details",style: TextStyle(color: Colors.black,fontSize: 18),),
                  Row(
                    children: [
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),
                      Text("Lorem ipsum : dolor s",style: TextStyle(color: Colors.black,fontSize: 18),),

                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }
}

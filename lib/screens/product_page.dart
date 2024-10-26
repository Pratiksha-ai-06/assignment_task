import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:impactsolution/controller/product_page_controller.dart';
import 'package:impactsolution/screens/product_detail.dart';
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ProductPageController productPageController =Get.put(ProductPageController());
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Women Clothing",style: TextStyle(color: Colors.white),),
      leading: Icon(Icons.arrow_back,color: Colors.white,), bottomOpacity: 3,
      ),
       body:Column(
        children: [
          Expanded(
            child: Obx(() {
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 15,
                ),
                itemCount: productPageController.ProductPageCloths.length,
                itemBuilder: (context, index) {
                  final product = productPageController.ProductPageCloths[index];
                  return GestureDetector(
                    onTap: () => productPageController.toggleFavorite(index),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                          children:[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 120),
                                ),

                                 InkWell(
                                   onTap: (){
                                     Get.to(ProductDetail(image:product['image'], index: 0, name: product['name'], price: product['price'],));
                                   },
                                   child: Container(
                                     child: Image.asset(height: 100,
                                          product["image"], fit: BoxFit.cover),
                                   ),
                                 ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Container(
                                        height: 22,
                                        width: 50,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.star,color: Colors.yellow,),
                                            Center(child: Text(product["rating"],style: TextStyle(color: Colors.black),)),
                                          ],
                                        ),
                                       ),
                                     ],
                                   ),

                                ListTile(
                                  title:Text(product["name"], style: TextStyle(fontWeight: FontWeight.bold)),
                                  subtitle: Text(product["price"], style: TextStyle(color: Colors.grey)),
                                  trailing:InkWell(
                                   onTap: (){},
                                    child: Icon(
                                      product["isFavorite"] ? Icons.favorite : Icons.favorite_border,
                                      color: product["isFavorite"] ? Colors.red : Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ]
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      )





    );
  }
}


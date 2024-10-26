import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impactsolution/binding/product_detail_binding.dart';
import 'package:impactsolution/binding/product_page_binding.dart';
import 'package:impactsolution/routes/routes.dart';
import 'package:impactsolution/screens/product_detail.dart';
import 'package:impactsolution/screens/product_page.dart';


class AppPage{
  static String INITIAL_ROUTE=Routes.PRODUCT_PAGE_ROUTE;
  static final pages=[
    GetPage(
      name: Routes.PRODUCT_DETAIL_ROUTE,
      page: ()=>ProductDetail(image: 'image',index: 0, name: 'name', price: 'price',),
      binding: ProductDetailBinding()
    ),
    GetPage(
        name: Routes.PRODUCT_PAGE_ROUTE,
        page: ()=>ProductPage(),
    binding: ProductPageBinding()
    ),

  ];
}




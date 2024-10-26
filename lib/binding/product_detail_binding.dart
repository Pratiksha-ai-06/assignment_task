import 'package:get/get.dart';
import 'package:impactsolution/controller/product_page_controller.dart';

class ProductDetailBinding extends Bindings
{
  @override
  void dependencies() {
Get.put<ProductPageController>(ProductPageController());  }

}
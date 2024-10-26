import 'package:get/get.dart';

class ProductPageController extends GetxController
{
  RxList<Map<String,dynamic>> ProductPageCloths=[

    {"name":"Empire waist","price":"\$40.00 USD","image":"assets/images/w1.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"Short Sleeve","price":"\$48.00 USD","image":"assets/images/w2.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"Three piecesuit","price":"\$36.00 USD","image":"assets/images/w3.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"Anarkali","price":"\$28.00 USD","image":"assets/images/w4.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"jumped suit","price":"\$39.00 USD","image":"assets/images/w5.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"Skater Dress","price":"\$30.00 USD","image":"assets/images/w6.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"jumped suit","price":"\$39.00 USD","image":"assets/images/w5.jpg","isFavorite":false,"rating":"4.6"},
    {"name":"Skater Dress","price":"\$30.00 USD","image":"assets/images/w6.jpg","isFavorite":false,"rating":"4.6"},
  ].obs;

  void toggleFavorite(int index)
  {
    ProductPageCloths[index]['isFavorite'] = !ProductPageCloths[index]['isFavorite'];
    ProductPageCloths.refresh();
  }


}
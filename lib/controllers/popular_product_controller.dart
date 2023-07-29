import 'package:get/get.dart';
import 'package:myfood_delivery/data/repository/popular_product_repo.dart';
import 'package:myfood_delivery/models/products_model.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList =
      []; //underscore marks as a private variable, so...
  List<dynamic> get popularProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      //sucess
      print("got products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      update();
    } else {
      print("got no shit");
    }
  }
}

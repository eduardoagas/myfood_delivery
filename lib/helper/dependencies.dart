import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myfood_delivery/controllers/popular_product_controller.dart';
import 'package:myfood_delivery/data/api/api_client.dart';
import 'package:myfood_delivery/data/repository/popular_product_repo.dart';
import 'package:myfood_delivery/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //Get.lazyPut(() => ApiClient(appBaseUrl: "http://mvs.bslmeiyu.com"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}

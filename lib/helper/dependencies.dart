import 'package:get/get.dart';
import 'package:project_bella/data/repository/popular_product_repo.dart';
import 'package:project_bella/utils/app_constants.dart';
import '../controllers/popular_product_controller.dart';
import '../data/api/api_client.dart';


Future<void> init()async {

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));

  //repos
  Get.lazyPut(()=>PopularProductRepo(apiClient:Get.find()));

  //controllers
  Get.lazyPut(()=>PopularProductController(popularProductRepo:Get.find()));

}
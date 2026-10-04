import 'package:chefstation_chefapp/features/auth/controllers/auth_controller.dart';
import 'package:chefstation_chefapp/helper/route_helper.dart';
import 'package:chefstation_chefapp/common/widgets/custom_snackbar_widget.dart';
import 'package:get/get.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if(response.statusCode == 401) {
      Get.find<AuthController>().clearSharedData();
      Get.offAllNamed(RouteHelper.getSignInRoute());
    }else {
      showCustomSnackBar(response.statusText);
    }
  }
}
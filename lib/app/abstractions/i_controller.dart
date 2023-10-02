import 'package:get/get.dart';
import 'package:transit_alerts/app/core/failure/app_exception.dart';
import 'package:transit_alerts/app/ui/snack_bar.dart';

mixin IController on GetxController {
  void actionPerform({required Function action, Function? callback}) async {
    try {
      await action.call();
    } on AppException catch (e) {
      handleError(e);
    } finally {
      await callback?.call();
    }
  }

  bool handleError(error) {
    if (error is UnAuthorizedException) {
      SnackBars.errorSnackBar(
        title: 'Erreur',
        message: error.statusMessage,
        width: Get.width,
        snackPosition: SnackPosition.BOTTOM,
      );
      return true;
    }

    return false;
  }
}

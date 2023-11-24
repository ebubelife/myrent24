import '../controller/select_cab_one_controller.dart';
import 'package:get/get.dart';

class SelectCabOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectCabOneController());
  }
}

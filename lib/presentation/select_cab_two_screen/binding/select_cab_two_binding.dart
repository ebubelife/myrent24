import '../controller/select_cab_two_controller.dart';
import 'package:get/get.dart';

class SelectCabTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectCabTwoController());
  }
}

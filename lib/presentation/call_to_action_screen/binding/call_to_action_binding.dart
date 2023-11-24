import '../controller/call_to_action_controller.dart';
import 'package:get/get.dart';

class CallToActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallToActionController());
  }
}

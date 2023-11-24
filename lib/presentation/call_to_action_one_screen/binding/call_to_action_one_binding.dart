import '../controller/call_to_action_one_controller.dart';
import 'package:get/get.dart';

class CallToActionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallToActionOneController());
  }
}

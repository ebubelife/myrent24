import '../controller/call_to_action_three_controller.dart';
import 'package:get/get.dart';

class CallToActionThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallToActionThreeController());
  }
}

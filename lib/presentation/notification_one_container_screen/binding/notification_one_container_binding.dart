import '../controller/notification_one_container_controller.dart';
import 'package:get/get.dart';

class NotificationOneContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationOneContainerController());
  }
}

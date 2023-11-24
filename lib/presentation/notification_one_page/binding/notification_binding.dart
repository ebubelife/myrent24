import '../controller/notification_one_controller.dart';
import 'package:get/get.dart';

import '../models/notification_one_model.dart';

class NotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationOneController(NotificationOneModel().obs));
  }
}

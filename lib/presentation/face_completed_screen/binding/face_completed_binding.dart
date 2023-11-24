import '../controller/face_completed_controller.dart';
import 'package:get/get.dart';

class FaceCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaceCompletedController());
  }
}

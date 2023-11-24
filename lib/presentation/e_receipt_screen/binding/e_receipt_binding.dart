import '../controller/e_receipt_controller.dart';
import 'package:get/get.dart';

class EReceiptBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EReceiptController());
  }
}
